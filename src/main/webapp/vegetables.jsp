<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vegetables - FreshBasket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        .card img {
            height: 200px;
            object-fit: cover;
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
<div class="container mt-5">
    <h1 class="text-center mb-4">Fresh Vegetables</h1>
    <p class="text-center">Explore a wide variety of fresh and organic vegetables!</p>


    <!-- Bootstrap Grid -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            boolean isLoggedIn = session.getAttribute("user") != null;
        %>
        <!-- Example Card 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/40-be0011-decorehomz-original-imagf8jxffm5xyzf-beatroot.webp" class="card-img-top" alt="Beatroot">
                <div class="card-body">
                    <h5 class="card-title">Beatroot</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $3/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <!-- Example Card 2 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/36700-0w470h470_Organic_Red_Onion_From_Italy.jpg" class="card-img-top" alt="Onion">
                <div class="card-body">
                    <h5 class="card-title">Onion</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.2/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 3 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/brinjal_215053859.webp" class="card-img-top" alt="Brinjal">
                <div class="card-body">
                    <h5 class="card-title">Brinjal</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.7/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 4 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/garlic.jpeg" class="card-img-top" alt="Garlic">
                <div class="card-body">
                    <h5 class="card-title">Garlic</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $0.7/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <!-- Example Card 5 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/Leeks.jpg" class="card-img-top" alt="Leeks">
                <div class="card-body">
                    <h5 class="card-title">Leeks</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $0.9/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 6 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/pexels-chokniti-khongchum-1197604-2280550-carrot.jpg" class="card-img-top" alt="Carrot">
                <div class="card-body">
                    <h5 class="card-title">Carrot</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.1/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 7 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/pexels-freestocks-134877-cabage.jpg" class="card-img-top" alt="Cabage">
                <div class="card-body">
                    <h5 class="card-title">Cabage</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.3/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 8 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/pexels-julia-nagy-568948-1327838-tomato.jpg" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $0.7/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 9 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/pexels-victorino-2286776-potato.jpg" class="card-img-top" alt="Potatoes">
                <div class="card-body">
                    <h5 class="card-title">Potatoes</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.5/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div> <!-- Example Card 10 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/Pumpkin-sliced-open-f2b8dde.jpg" class="card-img-top" alt="Pumpkin">
                <div class="card-body">
                    <h5 class="card-title">Pumpkin</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.2/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <!-- Example Card 11 -->
        <div class="col">
            <div class="card h-100">
                <img src="assets/images/vegetables/White-radish-2.webp" class="card-img-top" alt="Radish">
                <div class="card-body">
                    <h5 class="card-title">Radish</h5>
                    <p class="card-text">Fresh and juicy perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $1.3/kg</strong></p>
                    <a href="<%= isLoggedIn ? "" : "login.jsp" %>">
                        <button class="btn btn-success"
                                <%= isLoggedIn ? "" : "disabled" %>
                                title="<%= isLoggedIn ? "" : "Please log in to add items to the cart" %>">
                            Add to Cart
                        </button>
                    </a>
                </div>
            </div>
        </div>
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
