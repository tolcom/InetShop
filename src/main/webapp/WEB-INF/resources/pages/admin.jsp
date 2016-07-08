<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<html>
<head>
    <style>
        <%@ include file="/WEB-INF/resources/css/admin.css" %>
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
    <script src="/resources/js/admin.js"></script>

<head>
<body>
<c:url value="/j_spring_security_logout" var="logoutUrl"/>

<!-- csrt support -->
<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>

<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>

<c:if test="${pageContext.request.userPrincipal.name != null}">
    <h2>
        Welcome : ${pageContext.request.userPrincipal.name} | <a
            href="javascript:formSubmit()"> Logout</a>
    </h2>
</c:if>


<nav id="primary_nav_wrap">
    <ul class="main-menu">
        <li><a href="/">На главную</a>
        <li><a href="#">Товары</a>
        </li>
        <li><a href="#">Быстрое меню</a>
            <ul>
                <li><a href="/admin/mark">Марка</a></li>
                <li><a href="#">Модель</a></li>
                <li><a href="#">Модификация</a></li>
            </ul>
        </li>
        <li><a href="#">Настройки</a></li>
    </ul>
</nav>


</body>
</html>