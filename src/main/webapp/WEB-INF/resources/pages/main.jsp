<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    <script type="text/javascript" src="http://getbootstrap.com/dist/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.css"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <style>
        <%@ include file="/WEB-INF/resources/css/main.css" %>
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="/resources/js/main.js"></script>
</head>
<body>
<div class="common-container">
    <!-- HEADER -->
    <div id="container-header" class="header">
        <div class="logo">
            <a href="/"></a>
        </div>
        <div class="phone">
            <p class="phone-number">+38 (096) 140 89 68</p>

            <p class="phone-number">+38 (096) 140 89 68</p>

            <p class="timetable">
                Понедельник - Пятница <span>9.00 - 18.00</span>
                Суббота <span>9.00 - 15.00</span>
            </p>
        </div>
        <div class="login-panel">
            <p>Получи больше возможностей с tolcom.ua</p>
            <ul class="buttoms">
                <li class="login">
                    <a href="/login"><span>Авторизация</span></a>
                </li>
                <li>
                    <a href="/register"><span>Регистрация</span></a>
                </li>
            </ul>
        </div>
        <div class="menu">
            <ul>
                <li><a href="/brands"><span>Автозапчасти</span></a></li>
                <li><a href="/categories"><span>Автохимия</span></a></li>
                <li><a href="/brands"><span>Расходники</span></a></li>
                <li><a href="/categories"><span>Инструмент</span></a></li>
                <li><a href="/categories"><span>Акции</span></a></li>
            </ul>
            <div class="sub-menu">
                <input class="search-parts-by-code" type="text" placeholder="Укажите код детали"/>
                <a class="search-btn fa fa-search"> Найти</a>
                <a class="basket" href="/basket"><i class="fa fa-shopping-cart"> Корзина: </i>145</a>
            </div>
        </div>
    </div>
    <!-- BODY -->
    <div class="container-body">
        <div class="filters">
            <div class="filters-header">
                <p>Подбор по модели авто:</p>
                <i class="fa fa-repeat reset-filters"></i>
            </div>
            <hr class="hr"/>
            <div class="form">
                <div class="form-row">
                    <label>Кузов: </label>
                    <select class="form-select">
                        <option value="0">Выберите кузов</option>
                        <option value="98">Седан</option>
                    </select>
                </div>
                <div class="form-row">
                    <label>Год: </label>
                    <select class="form-select">
                        <option value="0">Выберите год автомобиля</option>
                        <option value="98">2003</option>
                    </select>
                </div>
                <div class="form-row">
                    <label>Марка: </label>
                    <select class="form-select">
                        <option value="0">Выберите марку</option>
                        <option value="98">Acura (184)</option>
                    </select>
                </div>
                <div class="form-row">
                    <label>Модель: </label>
                    <select class="form-select">
                        <option value="0">Выберите модель</option>
                        <option value="10">145 (11)</option>
                    </select>
                </div>
                <div class="form-row">
                    <label>Модификация: </label>
                    <select class="form-select">
                        <option value="0">Выберите модификацию</option>
                        <option value="10">145 (11)</option>
                    </select>
                </div>
                <input type="button" class="search-btn" value="Поиск"/>
            </div>
        </div>
    </div>
    <!-- END BODY -->
    <div class="catalog">
        <p>Каталог запчастей для ...</p>

        <div class="catalog-group" id="treeCatalog">
            <script>createCatalog(${catalogList})</script>
        </div>
        <div class="catalog-group-with-photo">

        </div>
    </div>
</div>
<!-- FOOTER -->
</body>
</html>