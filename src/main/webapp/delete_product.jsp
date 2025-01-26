<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product</title>
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
                <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="all_products.jsp">All Products</a></li>
                <li class="nav-item"><a class="nav-link" href="add_product.jsp">Add Products</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Delete Confirmation -->
<div class="container mt-5">
    <h2 class="text-center mb-4 text-danger">Delete Product</h2>
    <div class="card shadow">
        <div class="card-body">
            <h5 class="card-title text-center text-warning">Are you sure you want to delete this product?</h5>
            <p class="text-center text-muted">This action cannot be undone.</p>
            <!-- Display Product Details -->
            <div class="text-center mb-4">
                <%-- Replace with dynamic product details --%>
                <p><strong>Product Name:</strong> <%-- <%= product.getName() %> --%></p>
                <p><strong>Description:</strong> <%-- <%= product.getDescription() %> --%></p>
                <p><strong>Price:</strong> <%-- <%= product.getPrice() %> --%> USD</p>
                <p><strong>Stock:</strong> <%-- <%= product.getStock() %> --%></p>
                <p><strong>Category:</strong> <%-- <%= product.getCategory() %> --%></p>
            </div>
            <!-- Form -->
            <form action="process_delete_product.jsp" method="post">
                <!-- Hidden input to pass product ID -->
                <input type="hidden" name="id" value="<%-- <%= product.getId() %> --%>">
                <div class="text-center">
                    <button type="submit" class="btn btn-danger me-2">Delete</button>
                    <a href="all_products.jsp" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
