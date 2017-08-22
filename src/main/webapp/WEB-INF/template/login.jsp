<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="fragments/header_link.jsp"%>
<%--<%@include file="fragments/header.jsp"%>--%>

<style>
    * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
        font-family: 'PT Sans', sans-serif;
        color: #333;
        letter-spacing: 1.2px;
    }
    .container {
        width: 300px;
        margin: 30vh auto;
    }
    .login input {
        width: 100%;
        margin-top: 20px;
        padding: 5px;
        font-size: 20px;
        border: 1px solid #999;
    }
    #checkbox {
        width: 20px;
    }
    .login input[type = "submit"] {
        background-color: #36a7df;
        box-shadow: 0 1px 0 #006799;
        color: #fff;
        border-color: #0073aa #006799 #006799;
        border-width: 1px;
        border-style: solid;
        text-decoration: none;
        cursor: pointer;
    }
</style>
</head>

<div class="container">
    <img src="img/helenatex.svg" width="300px" height="auto">
    <%--<c:url var="loginUrl" value="/login"/>--%>



    <form action="/login" method="post" class="login">
        <%--Start alert message--%>
        <c:if test="${param.error != null}">
            <%--<div class="alert alert-danger">--%>
            <p>Invalid username and password.</p>
            <%--</div>--%>
        </c:if>
        <c:if test="${param.logout != null}">
            <%--<div class="alert alert-success">--%>
            <p>You have been logged out successfully.</p>
            <%--</div>--%>
        </c:if>
        <%--End alert --%>

        <input type="text" name="username" placeholder="Ім’я користувача ">
        <input type="password" name="password" placeholder="Пароль">
            <label><input type="checkbox" placeholder="Запам'ятати мене" id="checkbox">Запам'ятати мене</label>
            <input type="submit" value="Увійти">
            <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form>
</div>



<%@include file="fragments/footer_admin.jsp"%>