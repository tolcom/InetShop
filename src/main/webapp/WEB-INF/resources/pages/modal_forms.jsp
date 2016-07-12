<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<body>
<html>
<head>
    <style>
        <%@ include file="/WEB-INF/resources/css/modal_forms.css" %>
    </style>
    <link type="text/css" rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.css"/>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="http://getbootstrap.com/dist/js/bootstrap.js"></script>

    <script src="/resources/js/mark.js"></script>
</head>
<body>
<div id="panelMark" class="modal">
    <div class="modal-content ">
        <div class="modal-header">
            <span class="close" onclick="document.getElementById('panelMark').style.display='none'">x</span>
            <h5>Панель ввода марок:</h5>
        </div>
        <div class="modal-body">
            <div class="container">
                <div class="row">
                    <input type="hidden" name="count" value="1"/>

                    <div class="input-append form-group">
                        <div id="field">
                            <input autocomplete="off" id="field1" type="text"/>
                            <button id="b1" class="btn add-more" type="button">+</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn-success btn-xs">Сохранить</button>
        </div>
    </div>
</div>
</body>
</html>
