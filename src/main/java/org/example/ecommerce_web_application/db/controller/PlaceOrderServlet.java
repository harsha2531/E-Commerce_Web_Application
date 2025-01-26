package org.example.ecommerce_web_application.db.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.HashMap;

@WebServlet(name = "PlaceOrderServlet", value = "/place_order")
public class PlaceOrderServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int userId = (int) req.getSession().getAttribute("user_id");

        if (userId == 0) {
            resp.sendRedirect("login.jsp?message=Please log in to place an order");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Step 1: Retrieve items from the cart for the user
            String cartQuery = "SELECT product_id, quantity FROM cart WHERE user_id = ?";
            PreparedStatement cartStatement = connection.prepareStatement(cartQuery);
            cartStatement.setInt(1, userId);
            ResultSet cartResultSet = cartStatement.executeQuery();

            HashMap<Integer, Integer> cartItems = new HashMap<>(); // product_id -> quantity
            while (cartResultSet.next()) {
                cartItems.put(cartResultSet.getInt("product_id"), cartResultSet.getInt("quantity"));
            }

            if (cartItems.isEmpty()) {
                resp.sendRedirect("cart.jsp?message=Your cart is empty.");
                return;
            }

            // Step 2: Calculate total price and check product availability
            double totalAmount = 0.0;
            for (int productId : cartItems.keySet()) {
                int quantity = cartItems.get(productId);

                // Fetch product details
                String productQuery = "SELECT price, stock FROM products WHERE product_id = ?";
                PreparedStatement productStatement = connection.prepareStatement(productQuery);
                productStatement.setInt(1, productId);
                ResultSet productResultSet = productStatement.executeQuery();

                if (productResultSet.next()) {
                    double price = productResultSet.getDouble("price");
                    int stock = productResultSet.getInt("stock");

                    if (stock < quantity) {
                        resp.sendRedirect("cart.jsp?message=Insufficient stock for product ID: " + productId);
                        return;
                    }

                    totalAmount += price * quantity;
                }
            }

            // Step 3: Insert order into `orders` table
            String orderQuery = "INSERT INTO orders (user_id, total) VALUES (?, ?)";
            PreparedStatement orderStatement = connection.prepareStatement(orderQuery, Statement.RETURN_GENERATED_KEYS);
            orderStatement.setInt(1, userId);
            orderStatement.setDouble(2, totalAmount);
            orderStatement.executeUpdate();

            // Get the generated order_id
            ResultSet orderGeneratedKeys = orderStatement.getGeneratedKeys();
            int orderId = 0;
            if (orderGeneratedKeys.next()) {
                orderId = orderGeneratedKeys.getInt(1);
            }

            // Step 4: Insert items into `order_details` table and update product stock
            String orderDetailsQuery = "INSERT INTO order_details (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)";
            PreparedStatement orderDetailsStatement = connection.prepareStatement(orderDetailsQuery);

            for (int productId : cartItems.keySet()) {
                int quantity = cartItems.get(productId);

                // Fetch product price
                String productPriceQuery = "SELECT price FROM products WHERE product_id = ?";
                PreparedStatement priceStatement = connection.prepareStatement(productPriceQuery);
                priceStatement.setInt(1, productId);
                ResultSet priceResultSet = priceStatement.executeQuery();

                if (priceResultSet.next()) {
                    double price = priceResultSet.getDouble("price");

                    // Insert into order_details
                    orderDetailsStatement.setInt(1, orderId);
                    orderDetailsStatement.setInt(2, productId);
                    orderDetailsStatement.setInt(3, quantity);
                    orderDetailsStatement.setDouble(4, price);
                    orderDetailsStatement.addBatch();

                    // Reduce product stock
                    String updateStockQuery = "UPDATE products SET stock = stock - ? WHERE product_id = ?";
                    PreparedStatement stockStatement = connection.prepareStatement(updateStockQuery);
                    stockStatement.setInt(1, quantity);
                    stockStatement.setInt(2, productId);
                    stockStatement.executeUpdate();
                }
            }
            orderDetailsStatement.executeBatch();

            // Step 5: Clear the user's cart
            String clearCartQuery = "DELETE FROM cart WHERE user_id = ?";
            PreparedStatement clearCartStatement = connection.prepareStatement(clearCartQuery);
            clearCartStatement.setInt(1, userId);
            clearCartStatement.executeUpdate();

            // Redirect to order confirmation page
            resp.sendRedirect("order_confirmation.jsp?orderId=" + orderId);

            // Close resources
            cartResultSet.close();
            cartStatement.close();
            orderStatement.close();
            orderDetailsStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("cart.jsp?message=Error occurred: " + e.getMessage());
        }
    }
}
