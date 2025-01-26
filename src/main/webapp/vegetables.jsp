<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vegetables - FreshBasket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card img {
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
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
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        <!-- Example Card 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 4 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 5 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 6 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 7 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 8 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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
        </div> <!-- Example Card 9 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
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


</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
