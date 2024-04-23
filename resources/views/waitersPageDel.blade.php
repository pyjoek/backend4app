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
            <h1 class="mt-2">Request to Waiter</h1>
        </center>
        <table class="table">
            <th scope="lol">Table Number</th>
            <th scope="lol">Food Ordered</th>
            <th scope="lol">Customers Phone</th>
            <th scope="lol">Accept</th>
            @foreach ($waiters as $waiter)
                <tr>
                    <form action="/accepted" method="post">@csrf
                        <td><input type="text" name="tablename" value="{{$waiter->tablename}}" readonly></td>
                        <td><input type="text" name="foodname" value="{{$waiter->foodname}}" readonly></td>
                        <td><input type="text" name="phone" value="{{$waiter->phone}}" readonly></td>
                        <td><button class="btn btn-primary" type="submit">Accept</button></td>
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