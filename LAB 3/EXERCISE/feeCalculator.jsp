<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 4:49:43 pm
    Author     : User
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>Fee Calculator</title></head>
<body>
    <%@ include file="header.jsp" %>

    <h2>Membership Fee Calculator</h2>
    <form method="post">
        Number of activities joined: <input type="text" name="activities"><br><br>
        <input type="submit" value="Calculate">
    </form>

    <%
        String activitiesStr = request.getParameter("activities");
        if (activitiesStr != null) {
            int activities = Integer.parseInt(activitiesStr);
            double fee = activities * 10.0;
    %>
        <p>Total Fee: RM <%= String.format("%.2f", fee) %></p>
    <%
        }
    %>

    <%@ include file="footer.jsp" %>
</body>
</html>
