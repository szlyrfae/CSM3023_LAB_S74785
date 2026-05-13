<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>Process User</title>
</head>
<body>

    <sql:setDataSource var="dbConnection" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3307/CSA3203"
                       user="root" password=""/>

    <sql:update dataSource="${dbConnection}">
        INSERT INTO userprofile(username, password, firstname, lastname)
        VALUES (?, ?, ?, ?)
        <sql:param value="${param.username}" />
        <sql:param value="${param.password}" />
        <sql:param value="${param.firstname}" />
        <sql:param value="${param.lastname}" />
    </sql:update>

    <p><b>User registered successfully!</b></p>
    <a href="login.jsp">Proceed to Login</a>

</body>
</html>