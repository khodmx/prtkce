
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <title>Курсериум</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/navigation-with-search.css">
</head>
<?php
require 'db.php';
?>
<body>
<header class="header">
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#252424">
    <a class="navbar-brand" href="#"><h3 style="margin-top: 6px">Курсериум</h3></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Поиск</button>
      </form>
      <ul class="navbar-nav mr-auto">
        <div class="dropdown">
          <button class="btn btn-outline-light dropdown" type="button" href="#"
                  style="margin-left: 565px" id="dropdownMenuButton" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">Язык</button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">Русский</a>
          </div>
        </div>
        <a class="btn btn-outline-light" href="login.php" role="button" style="margin-left:10px">Вход</a>
        <a class="btn btn-outline-light" href="reg.php" role="button" style="margin-left:10px">Регистрация</a>
      </ul>
    </div>
  </nav>
  <div class="dropdown">
    <button type="button" class="btn dropdown" data-toggle="dropdown">
      <i class="fa fa-bars fa-lg" style="margin-top: 10px;margin-left: 5px" aria-hidden="true"></i>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Обучение</a>
      <a class="dropdown-item" href="#">Тесты</a>
      <a class="dropdown-item" href="#">Вебинары</a>
      <a class="dropdown-item" href="#">Тарифы</a>
      <a class="dropdown-item" href="#">Форум</a>
      <a class="dropdown-item" href="#">FAQ</a>
      <a class="dropdown-item" href="#">Социальные сети</a>
      <a class="dropdown-item" href="#">Обратная связь</a>
    </div>
  </div>
  <div class="container">
    <div class="btn-group-vertical col-md-3 offset-md-9" style="top: 5px">
      <button type="button" a href="#" class="btn btn-outline-dark">Популярные курсы</button>
      <button type="button" a href="#" class="btn btn-outline-dark">Новые курсы</button>
      <button type="button" a href="#" class="btn btn-outline-dark">Платные курсы</button>
      <button type="button" a href="#" class="btn btn-outline-dark">Изучение языков</button>
      <button type="button" a href="#" class="btn btn-outline-dark">Подготовка к ЕГЭ</button>
      <button type="button" a href="#" class="btn btn-outline-dark">Язык курса</button>
    </div>
    <section>
      <div class="container">
        <div class="card" type="button" a href="#" style="background-color: #252424; width: 980px; height: 133px; left: -182px; top: -218px">
          <img src="img/1547023319_2000px-Python-logo-notext.svg.png" class="card-img" alt="Python"
               style="width: 65px;height: 65px; margin-left:20px ; margin-top: 31px">
          <div class ="card-img-overlay col-md-9 offset-md-1" style="top: 29px">
            <h3 class="card-title" style="color: #fff">Основы программирования на Python</h3>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="card" type="button" a href="#" style="background-color: #252424; width: 980px; height: 133px; left: -182px; top: -203px">
          <img src="img/command+develop+language+php+programming+software+icon-1320165727581845211.png" class="card-img" alt="PHP"
               style="width: 85px;height: 85px; margin-left:10px ; margin-top: 23px">
          <div class ="card-img-overlay col-md-9 offset-md-1" style="top: 25px">
            <h3 class="card-title" style="color: #fff">Основы программирования на PHP</h3>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="card" type="button" a href="#" style="background-color: #252424; width: 980px; height: 133px; left: -182px; top: -188px">
          <img src="img/england-152143_1280.png" class="card-img" alt="LangLes"
               style="width: 80px;height: 60px; margin-left: 11px; margin-top: 34px">
          <div class ="card-img-overlay col-md-9 offset-md-1" style="top: 25px">
            <h3 class="card-title" style="color: #fff">Курсы английского</h3>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="card" type="button" a href="#" style="background-color: #252424; width: 980px; height: 133px; left: -182px; top: -173px">
          <img src="img/affiliate-marketing.png" class="card-img" alt="mark"
               style="width: 67px;height: 67px; margin-left: 18px; margin-top: 28px">
          <div class ="card-img-overlay col-md-9 offset-md-1" style="top: 25px">
            <h3 class="card-title" style="color: #fff">Основы интернет-маркетинга</h3>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="card" type="button" a href="#" style="background-color: #252424; width: 980px; height: 133px; left: -182px; top: -158px">
          <img src="img/права.png" class="card-img" alt="prava"
               style="width: 185px;height: 185px; margin-left: -35px; margin-top: -25px">
          <div class ="card-img-overlay col-md-9 offset-md-1" style="top: 25px">
            <h3 class="card-title" style="color: #fff">Вводный курс по правам человека</h3>
          </div>
        </div>
      </div>
    </section>
    <section>
      <header class="info">
        <div class="container-fluid">
          <div class="row">
            <div class = "contacts" type="button" a href="#" style="margin-top: 25px">Контакты</div>
            <div class = "confidential" type="button" a href="#" style="margin-top: 25px">Условия конфиденциальности</div>
            <div class = "about project" type="button" a href="#" style="margin-top: 25px">О проекте</div>
          </div>
        </div>
      </header>
    </section>
  </div>
</header>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
