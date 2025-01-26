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

@WebServlet(name = "RegisterServlet",value = "/register")
public class RegisterServlet extends HttpServlet {
        String DB_URL = "jdbc:mysql://localhost:3306/ecommerce";
        String DB_USER = "root";
        String DB_PASSWORD = "Ijse@123";

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String name  = req.getParameter("name");
            String email  = req.getParameter("email");
            String address  = req.getParameter("address");
            String phone  = req.getParameter("phone");
            String password  = req.getParameter("password");
            String confirmPassword  = req.getParameter("confirmPassword");



            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                        DB_URL,
                        DB_USER,
                        DB_PASSWORD
                );

                String sql = "insert into users(name,email,password,phone,address) values(?,?,?,?,?)";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password);
                ps.setString(4, phone);
                ps.setString(5, address);

                int rowsInserted = ps.executeUpdate();


                // Close the connection
                ps.close();
                connection.close();

                // Redirect based on success
               /* if (rowsInserted > 0) {
                    resp.sendRedirect("register.jsp?message=User Saved Successfully");
                } else {
                    //fail
                    resp.sendRedirect(
                            "register.jsp?message=User Save Failed"
                    );
                }*/
                if (rowsInserted > 0) {
                    resp.sendRedirect("register.jsp?message=User Saved Successfully...&status=success");
                    System.out.println("Redirect URL: register.jsp?message=User Saved Successfully...&status=success");


                } else {
                    resp.sendRedirect("register.jsp?message=User Save Failed..!&status=error");
                }
            } catch (Exception e) {
                e.printStackTrace();
                req.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
                req.getRequestDispatcher("register.jsp").forward(req, resp);
            }
        }

}


