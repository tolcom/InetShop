<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        <%@ include file="/WEB-INF/resources/css/content.css" %>
    </style>
    <script src="/resources/js/common.js"></script>
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

                            <c:forEach items="${marks}" var="mark">
                                <tr>
                                    <td><a href="#">${mark.name}</a></td>
                                    <td><a href="javascript:deleteItem('mark','${mark.id}')"
                                           onclick="return confirm('Вы уверены?')"
                                           class="ico del">Delete</a><a href="#" class="ico edit">Edit</a></td>
                                </tr>
                            </c:forEach>

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
                        <a href="#" class="add-button"
                           onclick="document.getElementById('panelMark').style.display='block'"><span>Добавить новую марку</span></a>

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
