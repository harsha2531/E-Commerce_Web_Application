package org.example.ecommerce_web_application.db.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Ijse@123";
    private Object user;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        

        try {
            // Check for admin credentials
            if (email.equals("admin@example.com") && password.equals("admin123")) {
                HttpSession session = req.getSession();
                session.setAttribute("role", "admin");
                session.setAttribute("email", email);
                resp.sendRedirect("admin_home_page.jsp");
                return;
            }

            // Validate regular user credentials
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Login successful
                String role = rs.getString("role");
                HttpSession session = req.getSession();
                session.setAttribute("email", email);
                session.setAttribute("role", role);
                // Assuming login is successful
                session.setAttribute("user", email); // Or user object
                session.setAttribute("user", user); // Assuming `user` is the logged-in user object



                if ("customer".equals(role)) {
                    resp.sendRedirect("index.jsp?message=User Login Successfully...&status=success");
                } else {
                    resp.sendRedirect("admin_home_page.jsp");
                }
            } else {
                // Login failed
                resp.sendRedirect("login.jsp?error=Invalid Email or Password..!");
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("login.jsp?error=Something went wrong. Please try again...");
        }
    }
}
