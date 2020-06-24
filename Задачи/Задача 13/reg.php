<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Регистрация</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/navigation-with-search.css">
    <style type="text/css"></style>
</head>
<?php
require 'signup.php';
?>
<body style="background-color: #252424">
<div class="container">
    <header>
        <h2 class="text-white text-center" style="margin-top:200px;">Регистрация</h2>
        <form method="post">
            <div class="row mx-auto" style="width:450px; margin-left: 330px; margin-top: 30px">
                <label for="login"></label>
                <input type="text" minlength="8" maxlength="20" class="form-control" id="login" name="login" placeholder="Логин" value="<?php echo @$data['login']; ?>">
                </div>

            <div class="form-group mb-2 text-white mx-auto" style="width:450px; margin-top: -11px">
                <label for="exampleInputEmail1"></label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="E-mail" value="<?php echo @$data['email']; ?>">
            </div>

            <div class="form-group mb-2 text-white mx-auto" style="width:450px;margin-top:-20px">
                <label for="exampleInputPassword1"></label>
                <input type="password" minlength="8" maxlength="20"  class="form-control" id="exampleInputPassword1" name="password" placeholder="Пароль" value="<?php echo @$data['password']; ?>">
            </div>

            <div class="form-group mb-2 text-white mx-auto" style="width:450px;margin-top:-20px">
                <label for="exampleInputPassword2"></label>
                <input type="password" minlength="8" maxlength="20"  class="form-control" id="exampleInputPassword2" name="password_confirm" placeholder="Подтвердите пароль" value="<?php echo @$data['password_confirm']; ?>">
            </div>

            <button type="submit" class="btn btn-success text-center" name="do_reg" style="width:450px;margin-top:4px; margin-left: 330px">Зарегистрироваться</button>

        </form>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </header>
</div>
</body>
</html>