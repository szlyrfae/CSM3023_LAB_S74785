<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 4:48:14 pm
    Author     : User
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>Club Registration</title></head>
<body>
    <%@ include file="header.jsp" %>

    <h2>Student Club Registration</h2>
    <form action="processRegistration.jsp" method="post">
        Name: <input type="text" name="studentName"><br><br>
        Matric Number: <input type="text" name="matricNumber"><br><br>
        Select Club:
        <select name="club">
            <option value="Robotics">Robotics</option>
            <option value="Drama">Drama</option>
            <option value="Sports">Sports</option>
            <option value="Music">Music</option>
        </select><br><br>
        <input type="submit" value="Register">
    </form>

    <%@ include file="footer.jsp" %>
</body>
</html>
