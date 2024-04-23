<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
    <nav class="navbar navbar-expand-lg d-flex justify-content-center navbar-light ">
      <!-- Brand/logo -->
      <div>
      <!-- <img src="{{asset('favicon.jpg')}}" width="40px" height="40px" alt="logo goes here">&nbsp -->
      <h1>{{config('app.name')}}</h1>
      </div>
      <!-- Toggler/collapsibe Button -->
      <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button> -->
    </nav>
    <div class="row">
        <!-- left side bar -->
        <div class="col-sm-2 d-flex flex-column">
            <!-- <a href="/register" class="p-2">Add User</a> -->
            <a href="/newF" class="p-2">Add Food</a>
            <a href="/newD" class="p-2">Add Drink</a>
            <a href="/newTable" class="p-2">Add Table</a>
            <a href="/del/foods" class="p-2">Delete Foods</a>
            <a href="/del/drinks" class="p-2">Delete Drinks</a>
            <a href="/waliokubali" class="p-2">Waiters Accepted</a>
            <a href="/logout"><button class="btn btn-primary">Logout</button></a>
            </div>

        <div class="col-sm-10">
        <center>
            <h1 class="mt-2">Orders Placed</h1>
        </center>
    <div class="d-flex justify-content-around mb-3">
        <a href="/admin1"><button class="btn btn-success">Orders</button></a>
        <a href="/admin"><button class="btn btn-success">Request</button></a>
    </div>
        <table class="table">
            <th scope="lol">Table Number</th>
            <th scope="lol">Food Ordered</th>
            <th scope="lol">Waiter Who accepted</th>
            @foreach ($accept as $order)
                <tr>
                    <td>{{$order->tablename}}</td>
                    <td>{{$order->foodname}}</td>
                    <td>{{$order->username}}</td>
                </tr>
            @endforeach
        </table>
</div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>