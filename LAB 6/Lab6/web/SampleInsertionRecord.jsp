<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Lab 6 - Task 1</title>
    </head>
    <body>
        <h2>Insert Record into FirstTable (JSTL Style)</h2>

        <sql:setDataSource var="dbConnection" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost:3307/CSA3203"
                           user="root" password=""/>

        <sql:update dataSource="${dbConnection}">
            INSERT INTO FirstTable(firstColumn) VALUES ('Welcome...!')
        </sql:update>

        <p><b>Record inserted successfully using JSTL SQL tag!</b></p>

        <sql:query dataSource="${dbConnection}" var="result">
            SELECT * FROM FirstTable;
        </sql:query>

        <table border="1" cellpadding="8">
            <tr style="background-color: lightblue;">
                <th>First Column</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.firstColumn}" /></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
