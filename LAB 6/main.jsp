<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome!</h2>
    <table border="1" cellpadding="8">
        <tr style="background-color: lightblue;">
            <th>Username</th>
            <th>First Name</th>
            <th>Last Name</th>
        </tr>
        <tr>
            <td><c:out value="${sessionScope.uname}"/></td>
            <td><c:out value="${sessionScope.fname}"/></td>
            <td><c:out value="${sessionScope.lname}"/></td>
        </tr>
    </table>
    <br/>
    <a href="login.jsp">Logout</a>
</body>
</html>