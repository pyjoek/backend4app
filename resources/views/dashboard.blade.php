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
        <center>
            <h1 class="mt-2">Orders Placed</h1>
        </center>
    <div class="d-flex justify-content-around mb-3">
        <a href="/dashboard"><button class="btn btn-success">Order</button></a>
        <a href="/waitersRequest"><button class="btn btn-success">Request</button></a>
    </div>
        <table class="table">
            <th scope="col">Table Number</th>
            <th scope="col">Food Ordered</th>
            <th scope="col">Customers Phone</th>
            <th scope="col">Accept</th>
            @foreach ($orders as $order)
                <tr>
                    <form action="/accepted" method="post">@csrf
                        <td><input type="text" name="tablename" value="{{$order->tablename}}" readonly></td>
                        <td><input type="text" name="foodname" value="{{$order->foodname}}" readonly></td>
                        <td><input type="text" name="phone" value="{{$order->phone}}" readonly></td>
                        <td><button type="submit" class="btn btn-primary">Accept</button></td>
                    </form>
                </tr>
            @endforeach
            <center>
                <tr><td colspan="3"><a href="/logout"><button class="btn btn-success">Logout</button></a></td></tr>
            </center>
        </table>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>