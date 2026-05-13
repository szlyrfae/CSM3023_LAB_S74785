<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 4:49:09 pm
    Author     : User
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>Registration Result</title></head>
<body>
    <%@ include file="header.jsp" %>

    <h2>Registration Details</h2>
    <%
        String name = request.getParameter("studentName");
        String matric = request.getParameter("matricNumber");
        String club = request.getParameter("club");
    %>
    <p>Name: <%= name %></p>
    <p>Matric Number: <%= matric %></p>
    <p>Selected Club: <%= club %></p>

    <%@ include file="footer.jsp" %>
</body>
</html>
