<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 4:28:24 pm
    Author     : syaziyah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Calculator</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <h2>Enter Your Details</h2>
    <form action="processBMI.jsp" method="POST">
        Weight (kg): <input type="number" step="0.01" name="weight" required><br><br>
        Height (m): <input type="number" step="0.01" name="height" required><br><br>
        <input type="submit" value="Calculate BMI">
    </form>

    <jsp:include page="footer.jsp" />
</body>
</html>
