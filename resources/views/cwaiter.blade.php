<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <form action = "/callwaiter" method="post" class="col-md-8 offset-md-2 mt-3">@csrf
            <center><h1>DETAILS TO HELP WAITER</h1></center>
            <div class="form-group">
                <label for="exampleInputEmail1">Phone Number</label>
                <input type="number" name="phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter mobile number">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Food</label>
                <input type="text" name="foodname" class="form-control" readonly id="exampleInputPassword1" value="{{$food->foodname}}">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Table Name</label>
                <input type="text" name="tablename" class="form-control" id="exampleInputPassword1" placeholder="Enter table number">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>