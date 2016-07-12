<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>--%>
    <style>
        <%@ include file="/WEB-INF/resources/css/admin.css" %>
    </style>
</head>
<body>
<%@include file="/WEB-INF/resources/pages/modalforms.jsp" %>

<div id="container">
    <div class="shell">
        <div id="main">
            <div class="cl">&nbsp;</div>
            <div id="content">
                <div class="box">
                    <div class="box-head">
                        <h2 class="left">Марки</h2>
                    </div>
                    <div class="table">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <th>Наименование</th>
                                <th width="110" class="ac">Управление</th>
                            </tr>
                            <tr>
                                <td><h3><a href="#">Opel</a></h3></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>
                            <tr>
                                <td><h3><a href="#">Mazda</a></h3></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>
                            <tr>
                                <td><h3><a href="#">BMW</a></h3></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
            <div id="sidebar">
                <div class="box">
                    <div class="box-head">
                        <h2>Управление</h2>
                    </div>
                    <div class="box-content">
                        <a href="#" class="add-button"><span>Добавить новую марку</span></a>
                        <div class="cl">&nbsp;</div>
                    </div>
                </div>
            </div>
            <div class="cl">&nbsp;</div>
        </div>
    </div>
</div>
<div id="footer">
    <div class="shell">
        <span class="left">InetShop-2016</span>
        <span class="right">Все права защищены</span>
    </div>
</div>

</body>
</html>