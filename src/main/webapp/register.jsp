<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            background: url('assets/images/pexels-rdne-8540219forlogin.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }
        .register-form {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            border: none;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
        }

        .register-form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-control:focus {
            box-shadow: 0 0 5px rgba(13, 110, 253, 0.5);
            border-color: #0d6efd;
        }

        .btn-primary {
            background-color: #0d6efd;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .login-link {
            text-align: center;
            margin-top: 10px;
        }

        .login-link a {
            color: #0d6efd;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
        #topic{
            color: white;
        }
        .search-bar {
            background-color: white;
            border-radius: 14px;
            padding: 5px 40px;
            overflow: hidden;
        }

        .search-bar input {
            border: none;
            outline: none;
            background: transparent;
            color: #000;
            padding: 5px 15px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
    <div class="container">
        <a class="navbar-brand text-white" href="#">FreshBasket</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- Center Search Bar -->
            <form class="d-flex mx-auto search-bar">
                <input class="form-control me-2" type="search" placeholder="Search products..." aria-label="Search">
                <button class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
            </form>

            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Home</a></li>
                <li class="nav-item dropdown">
                    <!-- Dropdown for Products -->
                    <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Products
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="vegetables.jsp">Vegetables</a></li>
                        <li><a class="dropdown-item" href="fruits.jsp">Fruits</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <!-- Cart Icon -->
                    <a class="nav-link text-white" href="cart.jsp">
                        <i class="fas fa-shopping-cart"></i> Cart
                    </a>
                    <!-- Conditional Rendering for Login/Logout -->
                        <%
                    Object user = session.getAttribute("user");
                    if (user == null) {
                %>
                <li class="nav-item">
                    <a class="nav-link text-white" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <button class="btn btn-secondary" disabled>Logout</button>
                </li>
                <%
                } else {
                %>
                <li class="nav-item">
                    <button class="btn btn-secondary" disabled>Login</button>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="logout.jsp">Logout</a>
                </li>
                <% } %>

                <%--
                                <li class="nav-item"><a class="nav-link text-white" href="./admin_home_page.jsp">Admin</a></li>
                --%>
            </ul>
        </div>
    </div>
</nav>
<div class="register-form">
    <h2 id="topic">User Registration</h2>

    <%
        String message = request.getParameter("message");
        String error = request.getParameter("error");
    %>
    <%
        if (message != null){
    %>
    <div style="color: yellow">
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
    <!-- Alert Section -->
    <div id="alert-container" class="mt-3"></div>

    <form action="register" method="POST">
        <!-- Full Name -->
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
        </div>
        <!-- Email -->
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <!-- Phone -->
        <div class="mb-3">
            <label for="phone" class="form-label">Phone Number</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required>
        </div>
        <!-- Address -->
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="Enter your address" required>
        </div>
        <!-- Password -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <!-- Confirm Password -->
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
        </div>
       <%-- <!-- Role Selection -->
        <div class="mb-3">
            <label for="role" class="form-label">Select Role</label>
            <select class="form-select" id="role" name="role">
                <option value="customer" selected>Customer</option>
                <option value="admin">Admin</option>
            </select>
            <small class="text-muted">Select "Admin" only if authorized.</small>
        </div>--%>
        <!-- Register Button -->
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Register</button>
        </div>
    </form>
    <!-- Link to Login Page -->
    <div class="login-link">
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
</div>
<footer class="bg-dark text-white py-3">
    <div class="container text-center">
        <p>&copy; 2025 FreshBasket. All rights reserved.</p>
    </div>
</footer>

<script>
    // Function to display alerts dynamically
    function showAlert(message, status) {
        const alertContainer = document.getElementById('alert-container');
        const alertType = status === 'success' ? 'alert-success' : 'alert-danger';

        alertContainer.innerHTML = `
            <div class="alert ${alertType} alert-dismissible fade show" role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        `;
    }

    // Get query parameters from URL
    const urlParams = new URLSearchParams(window.location.search);
    const message = urlParams.get('message');
    const status = urlParams.get('status');

    // Debugging: Console log the parameters
    console.log("Message: ", message);
    console.log("Status: ", status);

    // Display alert if a message is present
    if (message) {
        showAlert(message, status);
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
