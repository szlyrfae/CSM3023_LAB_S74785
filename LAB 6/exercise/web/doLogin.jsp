<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>Validating Login</title>
</head>
<body>

    <sql:setDataSource var="dbConnection" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3307/CSA3203"
                       user="root" password=""/>

    <%-- Query to check if username and password match --%>
    <sql:query dataSource="${dbConnection}" var="result">
        SELECT * FROM userprofile WHERE username = ? AND password = ?
        <sql:param value="${param.username}" />
        <sql:param value="${param.password}" />
    </sql:query>

    <c:choose>
        <%-- If a matching record is found, go to main.jsp --%>
        <c:when test="${result.rowCount > 0}">
            <c:forEach var="row" items="${result.rows}">
                <c:set var="uname" value="${row.username}" scope="session"/>
                <c:set var="fname" value="${row.firstname}" scope="session"/>
                <c:set var="lname" value="${row.lastname}" scope="session"/>
            </c:forEach>
            <c:redirect url="main.jsp"/>
        </c:when>
        <%-- If no match, redirect back to login with error --%>
        <c:otherwise>
            <c:redirect url="login.jsp?error=1"/>
        </c:otherwise>
    </c:choose>

</body>
</html>