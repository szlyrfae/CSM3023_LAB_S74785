<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>User Login</h2>

    <%-- Show error message if redirected from doLogin.jsp --%>
    <c:if test="${param.error == '1'}">
        <p style="color: red;"><b>Invalid username or password..!</b></p>
    </c:if>

    <form action="doLogin.jsp" method="post">
        <table border="1" cellpadding="8">
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" maxlength="15" required/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" maxlength="10" required/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Login"/>
                    <input type="reset" value="Clear"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>