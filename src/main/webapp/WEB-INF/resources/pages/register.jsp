<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<body>

<div id="box">
    <form:form commandName="user" action="register" method="post">
        <table>
            <tr>
                <h3>РЕГИСТРАЦИЯ</h3>
            </tr>
            <tr>
                <td><i class="fa fa-envelope-o fa-fw"></i></td>
                <td><form:input type="text" path="email" placeholder="Почтовый адрес"/></td>
                <td><form:errors path="email" cssClass="error"/></td>
            </tr>

            <tr>
                <td><i class="fa fa-user"></i></td>
                <td><form:input path="username" placeholder="Имя пользователя"/></td>
                <td><form:errors path="username" cssClass="error"/></td>
            </tr>

            <tr>
                <td><i class="fa fa-key fa-fw"></i></td>
                <td><form:input type="password" path="password" placeholder="Пароль"/></td>
                <td><form:errors path="password" cssClass="error"/></td>
            </tr>

            <tr>
                <td><i class="fa fa-key fa-fw"></i><i class="fa fa-repeat"></i></td>
                <td><form:input type="password" path="confirmPassword" placeholder="Повторите пароль"/></td>
                <td><form:errors path="confirmPassword" cssClass="error"/></td>
            </tr>

            <tr>
                <td colspan="3">
                    <input type="submit" value="Зарегистрироваться"/>
                    <input type="reset" value="Обновить"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">Уже зарегистрирован!! <a href="login">Вход</a></td>
            </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form:form>
</div>
</div>
</body>
</html>
