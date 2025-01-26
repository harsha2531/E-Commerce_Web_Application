package org.example.ecommerce_web_application.db.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "AddCategoryServlet", value = "/add_category")
public class AddCategoryServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name  = req.getParameter("name");
        String description  = req.getParameter("description");


        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    DB_URL,
                    DB_USER,
                    DB_PASSWORD
            );

            String sql = "insert into categories(name,description) values(?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);


            int rowsInserted = ps.executeUpdate();


            // Close the connection
            ps.close();
            connection.close();


               /* if (rowsInserted > 0) {
                    resp.sendRedirect("register.jsp?message=User Saved Successfully");
                } else {
                    //fail
                    resp.sendRedirect(
                            "register.jsp?message=User Save Failed"
                    );
                }*/
            if (rowsInserted > 0) {
                resp.sendRedirect("add_category.jsp?message=Category Saved Successfully...&status=success");
                System.out.println("Redirect URL: add_category.jsp?message=Category Saved Successfully...&status=success");


            } else {
                resp.sendRedirect("add_category.jsp?message=Category Save Failed..!&status=error");
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
    }

