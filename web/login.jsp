<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login in to symLab</title>
    <link rel="stylesheet" href="bootstrap/css/styles.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">

            <div class="account-wall"><h1 class="text-center login-title">Login to SymLab</h1>
                <form class="form-signin">
                    <input type="text" class="form-control" placeholder="Username" required autofocus>
                    <input type="password" class="form-control" placeholder="Password" required>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">
                        Sign in
                    </button>
                    <label class="checkbox pull-left">
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
