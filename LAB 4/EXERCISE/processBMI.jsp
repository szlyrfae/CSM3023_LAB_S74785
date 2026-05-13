<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 4:30:14 pm
    Author     : syaziyah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        String weightStr = request.getParameter("weight");
        String heightStr = request.getParameter("height");

        double weight = Double.parseDouble(weightStr);
        double height = Double.parseDouble(heightStr);

        // BMI Formula: weight / (height * height)
        double bmi = weight / (height * height);

        String category;
        if (bmi < 18.5) {
            category = "Underweight";
        } else if (bmi <= 25) {
            category = "Normal";
        } else {
            category = "Overweight";
        }
    %>

    <jsp:forward page="resultBMI.jsp">
        <jsp:param name="bmiValue" value="<%= String.valueOf(bmi) %>" />
        <jsp:param name="category" value="<%= category %>" />
    </jsp:forward>
    </body>
</html>
