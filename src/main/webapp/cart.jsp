<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .cart-table th, .cart-table td {
            vertical-align: middle;
        }
        .cart-section {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .cart-section h3 {
            margin-bottom: 20px;
        }
        .cart-section .btn {
            width: 200px;
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
            padding: 5px 50px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
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

<!-- Cart Section -->
<div class="container mt-5">
    <div class="row">
        <!-- Billing Details Form -->
        <div class="col-md-4">
            <div class="cart-section">
                <h3>Billing Details</h3>
                <form action="process_cart.jsp" method="POST">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <textarea class="form-control" id="address" name="address" rows="4" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="phone" name="phone" required>
                    </div>
                    <div class="mb-3">
                        <label for="total" class="form-label">Total Amount</label>
                        <input type="text" class="form-control" id="total" name="total" readonly value="0">
                    </div>
                    <button type="submit" class="btn btn-success mb-3">Buy</button>
                    <a href="all_products.jsp" class="btn btn-secondary mb-3">Continue Shopping</a>
                </form>
            </div>
        </div>

        <!-- Shopping Cart Table -->
        <div class="col-md-8">
            <div class="cart-section">
                <h3>Shopping Cart</h3>
                <table class="table table-bordered cart-table">
                    <thead class="table-dark">
                    <tr>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Amount</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Example cart items, replace with dynamic data -->
                    <tr>
                        <td>Apple</td>
                        <td>Fruits</td>
                        <td>$1.50</td>
                        <td>
                            <input type="number" class="form-control" value="1" min="1" max="10" onchange="updateAmount(this)">
                        </td>
                        <td class="amount">$1.50</td>
                        <td>
                            <button class="btn btn-danger btn-sm">Remove</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Carrot</td>
                        <td>Vegetables</td>
                        <td>$0.80</td>
                        <td>
                            <input type="number" class="form-control" value="1" min="1" max="10" onchange="updateAmount(this)">
                        </td>
                        <td class="amount">$0.80</td>
                        <td>
                            <button class="btn btn-danger btn-sm">Remove</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="d-flex justify-content-between">
                    <h4>Total Amount:</h4>
                    <h4 id="totalAmount">$2.30</h4>
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

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Function to update amount when quantity changes
    function updateAmount(input) {
        var row = input.closest('tr');
        var price = parseFloat(row.cells[2].textContent.replace('$', ''));
        var quantity = parseInt(input.value);
        var amount = price * quantity;
        row.querySelector('.amount').textContent = '$' + amount.toFixed(2);
        updateTotalAmount();
    }

    // Function to update the total amount
    function updateTotalAmount() {
        var totalAmount = 0;
        document.querySelectorAll('.cart-table .amount').forEach(function(cell) {
            totalAmount += parseFloat(cell.textContent.replace('$', ''));
        });
        document.getElementById('totalAmount').textContent = '$' + totalAmount.toFixed(2);
        document.getElementById('total').value = totalAmount.toFixed(2); // Update the total amount in the form
    }
</script>

</body>
</html>
