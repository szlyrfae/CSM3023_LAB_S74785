<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 4:30:49 pm
    Author     : syaziyah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <h2>Your BMI Result</h2>
    <% 
        double bmi = Double.parseDouble(request.getParameter("bmiValue"));
        String category = request.getParameter("category");
    %>
    
    <p>Your BMI: <strong><%= String.format("%.2f", bmi) %></strong></p>
    <p>Category: <strong><%= category %></strong></p>
    
    <a href="bmiCalculator.jsp">Calculate Again</a>

    <jsp:include page="footer.jsp" />
</body>
</html>