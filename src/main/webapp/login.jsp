<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - FreshBasket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('assets/images/pexels-rdne-8540219forlogin.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }
        .card {
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            border: none;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
        }

        .form-control {
            background: /*rgba(255, 255, 255, 0.1);*/lightcyan;
            color: #fff;
        }
        .form-control:focus {
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            border-color: #28a745;
            box-shadow: none;
        }
        .btn-success {
            background: #28a745;
            border: none;
        }
        .btn-success:hover {
            background: #218838;
        }
        .custom-register-link {
            color: greenyellow; /* Change to any color you like */
            font-weight: bold;
            text-decoration: none; /* Remove underline */
        }

        .custom-register-link:hover {
            color: limegreen; /* Hover effect */
            text-decoration: underline; /* Optional hover underline */
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
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link text-white" href="./index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="#">Products</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="#">Cart</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="./login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card p-4" style="width: 400px;">
        <h3 class="text-center mb-4">Login</h3>
        <form action="LoginServlet" method="post">
            <!-- Email -->
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <!-- Login Button -->
            <div class="d-grid">
                <button type="submit" class="btn btn-success">Login</button>
            </div>
            <!-- Register Link -->
            <div class="text-center mt-3">
                <p>Don't have an account? <a href="register.jsp" class="custom-register-link class=">Register here</a></p>
            </div>
        </form>
    </div>
</div>
<footer class="bg-dark text-white py-3">
    <div class="container text-center">
        <p>&copy; 2025 FreshBasket. All rights reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
