<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 4:28:38 pm
    Author     : syaziyah
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Health Information</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <h2>BMI Categories</h2>
    <table border="1">
        <tr>
            <th>Category</th>
            <th>BMI Range</th>
        </tr>
        <%
            ArrayList<String[]> categories = new ArrayList<>();
            categories.add(new String[]{"Underweight", "Less than 18.5"});
            categories.add(new String[]{"Normal", "18.5 - 25.0"});
            categories.add(new String[]{"Overweight", "More than 25.0"});

            for(String[] row : categories) {
        %>
        <tr>
            <td><%= row[0] %></td>
            <td><%= row[1] %></td>
        </tr>
        <% } %>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>