<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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

<!-- Add Product Form -->
<div class="container mt-5">
    <h2 class="text-center mb-4">Add Category</h2>
    <%
        String message = request.getParameter("message");
        String error = request.getParameter("error");
    %>
    <%
        if (message != null){
    %>
    <div style="color: green">
        <%=message %>
    </div>
    <%
        }
    %>
    <%
        if (error != null){
    %>
    <div style="color: red">
        <%=error %>
    </div>
    <%
        }
    %>
    <form action="add_category" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="name" class="form-label">Category Name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Add Category</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
