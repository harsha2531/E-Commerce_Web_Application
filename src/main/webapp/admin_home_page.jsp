<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            transition: transform 0.2s ease-in-out;
        }
        .card:hover {
            transform: scale(1.05);
        }
    </style>
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
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="all_products.jsp">All Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_products.jsp">Add Products</a>
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

<!-- Dashboard Cards -->
<div class="container mt-5">
    <div class="row g-4">
        <!-- All Products -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <i class="fas fa-boxes fa-3x text-primary mb-3"></i>
                    <h5 class="card-title">All Products</h5>
                    <p class="card-text">View and manage all products in the store.</p>
                    <a href="all_products.jsp" class="btn btn-primary">View Products</a>
                </div>
            </div>
        </div>
        <!-- Add Products -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <i class="fas fa-plus-square fa-3x text-success mb-3"></i>
                    <h5 class="card-title">Add Products</h5>
                    <p class="card-text">Add new products to your inventory.</p>
                    <a href="add_products.jsp" class="btn btn-success">Add Product</a>
                </div>
            </div>
        </div>
        <!-- All Categories -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <i class="fas fa-tags fa-3x text-warning mb-3"></i>
                    <h5 class="card-title">All Categories</h5>
                    <p class="card-text">Manage all product categories.</p>
                    <a href="all_categories.jsp" class="btn btn-warning">View Categories</a>
                </div>
            </div>
        </div>
        <!-- Add Category -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <i class="fas fa-plus-circle fa-3x text-info mb-3"></i>
                    <h5 class="card-title">Add Category</h5>
                    <p class="card-text">Create a new product category.</p>
                    <a href="add_category.jsp" class="btn btn-info">Add Category</a>
                </div>
            </div>
        </div>
        <!-- Orders -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <i class="fas fa-shopping-cart fa-3x text-danger mb-3"></i>
                    <h5 class="card-title">Orders</h5>
                    <p class="card-text">View and manage customer orders.</p>
                    <a href="orders.jsp" class="btn btn-danger">View Orders</a>
                </div>
            </div>
        </div>
        <!-- Customers -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <i class="fas fa-users fa-3x text-secondary mb-3"></i>
                    <h5 class="card-title">Customers</h5>
                    <p class="card-text">View and manage registered customers.</p>
                    <a href="customers.jsp" class="btn btn-secondary">View Customers</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
