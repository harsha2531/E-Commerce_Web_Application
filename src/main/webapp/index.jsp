<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FreshBasket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Add keyframes for moving multiple background images */
        @keyframes moveBackgrounds {
            0% {
                background-image: url('assets/images/pexels-thegulsah-7338898.jpg');
                background-position: center center;
            }
            25% {
                background-image: url('assets/images/pexels-valeriya-26950735-h2.jpg');
                background-position: center left;
            }
            50% {
                background-image: url('assets/images/pexels-viktoria-slowikowska-5677794-h3.jpg');
                background-position: center right;
            }
            75% {
                background-image: url('assets/images/pexels-n-voitkevich-8939267-h4.jpg');
                background-position: left center;
            }
            100% {
                background-image: url('assets/images/pexels-kindelmedia-6994261-h5.jpg');
                background-position: right center;
            }
        }
        /* Add a background image to the header */
        header {
            background-image: url('assets/images/pexels-thegulsah-7338898.jpg');
            background-size: cover;
            background-position: center center;
            color: white;
            min-height: 70vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            animation: moveBackgrounds 20s ease infinite; /* Apply the animation */

        }
        header h1 {
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            font-weight: bold;
        }
        header p {
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.8);
            font-weight: bold;

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
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link text-white" href="#">Home</a></li>
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

<header>
    <div class="container text-center">
        <h1 class="display-4">Welcome to FreshBasket</h1>
        <p class="lead">Your one-stop shop for fresh vegetables and fruits!</p>
        <a href="product_list.jsp" class="btn btn-success btn-lg">Shop Now</a>
    </div>
</header>

<section class="py-5">
    <div class="container">
        <h2 class="text-center mb-4">Why Shop With Us?</h2>
        <div class="row">
            <div class="col-md-4 text-center">
                <i class="bi bi-bag-check-fill display-4 text-success"></i>
                <h4>Fresh Produce</h4>
                <p>We source the freshest vegetables and fruits directly from farms.</p>
            </div>
            <div class="col-md-4 text-center">
                <i class="bi bi-truck display-4 text-success"></i>
                <h4>Fast Delivery</h4>
                <p>Get your orders delivered to your doorstep in no time.</p>
            </div>
            <div class="col-md-4 text-center">
                <i class="bi bi-people-fill display-4 text-success"></i>
                <h4>Customer Support</h4>
                <p>We are here to help with any questions or concerns.</p>
            </div>
        </div>
    </div>
</section>

<footer class="bg-dark text-white py-3">
    <div class="container text-center">
        <p>&copy; 2025 FreshBasket. All rights reserved.</p>
    </div>
</footer>
<script>
    // Check the session from server-side
    const userLoggedIn = <%= session.getAttribute("user") != null %>;

    // Enable/disable buttons
    if (userLoggedIn) {
        document.getElementById("loginBtn").disabled = true;
        document.getElementById("logoutBtn").disabled = false;
    } else {
        document.getElementById("loginBtn").disabled = false;
        document.getElementById("logoutBtn").disabled = true;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

