<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
    <main class="container mt-5">
        <form action="/new-food" method="post" class="col-md-8 offset-md-2" enctype="multipart/form-data">@csrf
            <center>
                <h1>ADD NEW FOOD</h1>
            </center>
            <div class="form-group">
                <label for="exampleInputEmail1">Food Name</label>
                <input type="text" class="form-control" name="food"placeholder="Enter food name">
            </div>
            <div class="form-group">
                <label for="exampleInputFoodPic1">Food Pic</label>
                <input type="file" class="form-control" name="file" placeholder="Enter food pic name">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Price</label>
                <input type="number" class="form-control" name="price" placeholder="Price">
            </div>
            <center><input type="submit" class="btn btn-primary" value="Add"></center>
        </form>
    </main>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>