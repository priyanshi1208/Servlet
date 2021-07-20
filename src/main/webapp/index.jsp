<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <!-- Style -->
    <link rel="stylesheet" href="index.css">

    <title>Login</title>
</head>
<body>
<div class="login">
    <div class="back-img">
        <div class="log-in-text">
            <h2 class="active">Log In</h2>
        </div><!--log-in-text-->
        <div class="layer"></div><!--/.layer-->
    </div><!--/.back-img-->
    <div class="form-section">
        <form action="FirstServlet" method="post">
            <!--UserName-->
            <div class="row-content">
                <label class="label" for="username">UserName</label>
                <input class="input" name="username" type="text" id="username" required>
                <span class="text-error"></span>
            </div>
            <br/>
            <!--Password-->
            <div class="row-content">
                <label class="label" for="password">Password</label>
                <input class="input" type="password" name="password" id="password" required>
                <span class="text-error"></span>
            </div>
            <br/>
            <button type="submit" class="log-in-btn">
                Log In
            </button>
        </form>
    </div><!--/.form-section-->
    <!--/button-->
</div><!--/.login-->
</body>
</html>
