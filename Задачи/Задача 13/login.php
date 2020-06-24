<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Авторизация</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/navigation-with-search.css">
    <style type="text/css"></style>
</head>
<?php
require 'signin.php';
?>
<body style="background-color: #252424">
<div class="container">
    <header>
        <h2 class="text-white text-center" style="margin-top:200px">Авторизация</h2>
        <form method="post">
            <div class="form-group mb-2 text-white mx-auto" style="width:450px; margin-top:25px">
                <input type="text" class="form-control" id="login" name="login" placeholder="Логин" >
            </div>
            <label for="exampleInputPassword1"></label>
            <div class="form-group mb-2 text-white mx-auto" style="width:450px; margin-top:-20px">
                <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Пароль">
            </div>
            <button type="submit" class="btn btn-success text-center" name="do_login" style="width:450px;margin-top:5px; margin-left: 330px">Войти</button>

        </form>
    </header>
</div>
</body>
</html>

