<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fruits - FreshBasket</title>
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
    <h1 class="text-center mb-4">Fresh Fruits</h1>
    <p class="text-center">Discover a wide selection of fresh and juicy fruits!</p>

    <!-- Bootstrap Grid -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <!-- Example Card 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Apples" class="card-img-top" alt="Apples">
                <div class="card-body">
                    <h5 class="card-title">Apples</h5>
                    <p class="card-text">Crisp and sweet apples for snacking or baking.</p>
                    <p class="card-text"><strong>Price: $5/kg</strong></p>
                    <button class="btn btn-success">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Example Card 2 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Bananas" class="card-img-top" alt="Bananas">
                <div class="card-body">
                    <h5 class="card-title">Bananas</h5>
                    <p class="card-text">Ripe bananas loaded with natural energy and nutrients.</p>
                    <p class="card-text"><strong>Price: $2/kg</strong></p>
                    <button class="btn btn-success">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Example Card 3 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200?text=Grapes" class="card-img-top" alt="Grapes">
                <div class="card-body">
                    <h5 class="card-title">Grapes</h5>
                    <p class="card-text">Sweet and seedless grapes for a refreshing treat.</p>
                    <p class="card-text"><strong>Price: $3.5/kg</strong></p>
                    <button class="btn btn-success">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
