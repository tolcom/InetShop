<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link type="text/css" rel="stylesheet"
      href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"/>
<html>
<head>
    <style>
        <%@ include file="/WEB-INF/resources/css/login_register.css" %>
    </style>
</head>

<body onload='document.loginForm.username.focus();'>

<div id="box">

    <h3>ЛИЧНЫЙ КАБИНЕТ</h3>

    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>

    <form name='loginForm' action="<c:url value='/login' />" method='POST'>
        <table>
            <tr>
                <td>
                    <i class="fa fa-envelope-o fa-fw"></i>
                    <input type='text' name='username' placeholder="Почтовый адрес">
                </td>
            </tr>
            <tr>
                <td>
                    <i class="fa fa-key fa-fw"></i>
                    <input type='password' name='password' placeholder="Пароль">
                </td>
            </tr>
            <tr>
                <td colspan='2'><input name="Enter" type="submit" value="Вход"/></td>
            </tr>
        </table>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>

</body>
</html>