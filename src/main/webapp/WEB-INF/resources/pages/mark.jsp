<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <style>
        <%@ include file="/WEB-INF/resources/css/content.css" %>
    </style>
</head>
<body>
<%@include file="/WEB-INF/resources/pages/admin_header.jsp" %>
<%@include file="/WEB-INF/resources/pages/modal_forms.jsp" %>

<div id="container">
    <div class="shell">
        <div id="main">
            <div class="cl">&nbsp;</div>
            <div id="content">
                <div class="box">
                    <div class="box-head">
                        <h4 class="left">Марки</h4>
                    </div>
                    <div class="table">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <th>Наименование</th>
                                <th width="110" class="ac">Управление</th>
                            </tr>
                            <tr>
                                <td><a href="#">Opel</a></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>
                            <tr>
                                <td><a href="#">Mazda</a></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>
                            <tr>
                                <td><a href="#">BMW</a></td>
                                <td><a href="#" class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="sidebar">
                <div class="box">
                    <div class="box-head">
                        <h4 class="left">Управление</h4>
                    </div>
                    <div class="box-content">
                        <a href="#" class="add-button" onclick="document.getElementById('panelMark').style.display='block'"><span>Добавить новую марку</span></a>
                        <div class="cl">&nbsp;</div>
                    </div>
                </div>
            </div>
            <div class="cl">&nbsp;</div>
        </div>
    </div>
</div>

</body>
</html>
