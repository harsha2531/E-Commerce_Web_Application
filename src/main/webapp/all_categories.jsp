<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Categories</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_products.jsp">All Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_product.jsp">Add Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_categories.jsp">All Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_category.jsp">Add Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="orders.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customers.jsp">Customers</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Products Table -->
<div class="container mt-5">
    <h2 class="text-center mb-4">All Categories</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
        </tr>
        </thead>
         <tbody>
         <!-- Iterate over products list and display them -->
        <%-- <%
             // Example JDBC code to fetch products from the database
             // Assuming you have a Product model and JDBC connection
             String query = "SELECT * FROM products";
             try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database", "username", "password");
                  Statement stmt = con.createStatement();
                  ResultSet rs = stmt.executeQuery(query)) {

                 while (rs.next()) {
                     int id = rs.getInt("id");
                     String name = rs.getString("name");
                     String description = rs.getString("description");
                     double price = rs.getDouble("price");
                     int stock = rs.getInt("stock");
                     String category = rs.getString("category");
                     String image = rs.getString("image");
         %>
         <tr>
             <td><%= id %></td>
             <td><%= name %></td>
             <td><%= description %></td>
             <td><%= price %></td>
             <td><%= stock %></td>
             <td><%= category %></td>
             <td><img src="<%= image %>" alt="Product Image" width="100"></td>--%>
             <td>
                 <a href="edit_category.jsp?<%--id=<%= id %>--%>" class="btn btn-warning btn-sm">Edit</a>
                 <a href="delete_category.jsp?<%--id=<%= id %>--%>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
             </td>
         </tr>
        <%-- <%
                 }
             } catch (Exception e) {
                 e.printStackTrace();
             }
         %>--%>
         </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
