package org.example.ecommerce_web_application.db.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "AddProductServlet", value = "/add_product")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1MB
        maxFileSize = 1024 * 1024 * 5,  // 5MB
        maxRequestSize = 1024 * 1024 * 10 // 10MB
)
public class AddProductServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        double price;
        int stock;
        int categoryId;

        try {
            price = Double.parseDouble(req.getParameter("price"));
            stock = Integer.parseInt(req.getParameter("stock"));
            categoryId = Integer.parseInt(req.getParameter("category_id"));
        } catch (NumberFormatException e) {
            resp.sendRedirect("add_products.jsp?message=Invalid input for price, stock, or category ID.");
            return;
        }

        // Handle file upload
        Part imagePart = req.getPart("image");
        String imageName = imagePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + "uploads" + File.separator;

        // Check the upload directory exists
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists() && !uploadDir.mkdir()) {
            resp.sendRedirect("add_products.jsp?message=Failed to create upload directory.");
            return;
        }

        // Save the image to the server
        try {
            imagePart.write(uploadPath + imageName);
        } catch (IOException e) {
            resp.sendRedirect("add_products.jsp?message=Error saving image: " + e.getMessage());
            return;
        }

        //Operate the Database
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "INSERT INTO products(name, description, price, stock, category_id, image_url) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, description);
            ps.setDouble(3, price);
            ps.setInt(4, stock);
            ps.setInt(5, categoryId);
            ps.setString(6, "uploads/" + imageName);

            int rowsInserted = ps.executeUpdate();

            if (rowsInserted > 0) {
                resp.sendRedirect("add_products.jsp?message=Product added successfully!");
            } else {
                resp.sendRedirect("add_products.jsp?message=Failed to add product.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("add_products.jsp?message=Error occurred: " + e.getMessage());
        }

    }
}
