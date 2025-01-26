<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Category</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
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
                    <a class="nav-link" href="all_categories.jsp">All Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_category.jsp">Add Category</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Edit Product Form -->
<div class="container mt-5">
    <h2 class="text-center mb-4">Edit Category</h2>
    <form action="edit_category.jsp" method="post" enctype="multipart/form-data">
        <%-- Fetch product details from the database using the product ID passed as a parameter --%>
        <%-- &lt;%&ndash; String productId = request.getParameter("id");
          // Fetch product details from the database
          Product product = ProductDAO.getProductById(productId);--%>

        <%-- <div class="row">
             <!-- Product ID (hidden) -->
             <input type="hidden" name="id" value="&ndash;%&gt; <%= product.getId() %> ">&ndash;%&gt;

         <!-- Name -->
         <div class="col-md-6 mb-3">
             <label for="name" class="form-label">Product Name</label>
             <input type="text" class="form-control" id="name" name="name" value=" <%= product.getName() %>" required>
         </div>--%>

        <!-- Description -->
        <div class="col-md-6 mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3" required>
                <%-- <%= product.getDescription() %> --%>
            </textarea>
        </div>


</div>
<div class="text-center mt-4">
    <button type="submit" class="btn btn-success">Update Product</button>
    <a href="all_products.jsp" class="btn btn-secondary">Cancel</a>
</div>
</form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
