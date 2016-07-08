<%@page contentType="text/html; charset=UTF-8" %>
<link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<html>
<head>
    <style>
        <%@ include file="/WEB-INF/resources/css/admin.css" %>
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="/resources/js/admin.js"></script>
<head>

<body>
<nav id="primary_nav_wrap">
    <ul class="main-menu">
        <li><a href="/">На главную</a>
        <li><a href="#">Товары</a>
        </li>
        <li><a href="#">Быстрое меню</a>
            <ul>
                <li><a href="#">Добавить</a>
                    <ul>
                        <li><a href="#"
                               onclick="document.getElementById('panelNewMark').style.display='block'">Марка</a></li>
                        <li><a href="#">Модель</a></li>
                        <li><a href="#">Модификация</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="#">Настройки</a></li>
    </ul>
</nav>

<div id="panelNewMark" class="modal">
    <div class="modal-content ">
        <div class="modal-header">
            <span class="close" onclick="document.getElementById('panelNewMark').style.display='none'">x</span>
            <h4>Панель ввода марок:</h4>
        </div>
        <div class="modal-body">
            <p>

            <div class="container">
                <div class="row">
                    <input type="hidden" name="count" value="1"/>

                    <div class="input-append form-group">
                        <div id="field"><input autocomplete="off" class="input" id="field1" name="prof1" type="text"
                                               data-items="8"/>
                            <button id="b1" class="btn add-more" type="button">+</button>
                        </div>
                    </div>
                    <br>
                </div>
            </div>
            </p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-success btn-xs">Сохранить</button>
        </div>
    </div>
</div>
</body>
</html>