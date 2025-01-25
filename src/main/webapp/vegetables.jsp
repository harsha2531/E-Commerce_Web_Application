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
        <!-- Example Card 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Tomatoes" class="card-img-top" alt="Tomatoes">
                <div class="card-body">
                    <h5 class="card-title">Tomatoes</h5>
                    <p class="card-text">Fresh and juicy tomatoes perfect for salads and cooking.</p>
                    <p class="card-text"><strong>Price: $3/kg</strong></p>
                    <button class="btn btn-success">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Example Card 2 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Carrots" class="card-img-top" alt="Carrots">
                <div class="card-body">
                    <h5 class="card-title">Carrots</h5>
                    <p class="card-text">Crunchy and sweet carrots for snacking or cooking.</p>
                    <p class="card-text"><strong>Price: $2/kg</strong></p>
                    <button class="btn btn-success">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Example Card 3 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Broccoli" class="card-img-top" alt="Broccoli">
                <div class="card-body">
                    <h5 class="card-title">Broccoli</h5>
                    <p class="card-text">Green and healthy broccoli for nutritious meals.</p>
                    <p class="card-text"><strong>Price: $4/kg</strong></p>
                    <button class="btn btn-success">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
