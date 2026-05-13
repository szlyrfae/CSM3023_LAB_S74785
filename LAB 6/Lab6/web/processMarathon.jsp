<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="lab6.com.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Result</title>
</head>
<body>
    <%
        // Instantiate Marathon object
        Marathon marathon = new Marathon();

        // Set values from form
        marathon.setRunnerName(request.getParameter("runnerName"));
        marathon.setRunnerIC(request.getParameter("runnerIC"));
        marathon.setCategory(request.getParameter("category"));
        marathon.setTShirtSize(request.getParameter("tShirtSize"));

        // Use DAO to insert
        MarathonDAO dao = new MarathonDAO();
        int result = dao.insertMarathon(marathon);

        if (result > 0) {
            out.println("<h3>Registration Successful!</h3>");
            out.println("<p>Name: " + marathon.getRunnerName() + "</p>");
            out.println("<p>IC: " + marathon.getRunnerIC() + "</p>");
            out.println("<p>Category: " + marathon.getCategory() + "</p>");
            out.println("<p>T-Shirt Size: " + marathon.getTShirtSize() + "</p>");
        } else {
            out.println("<h3>Registration Failed. Please try again.</h3>");
        }
    %>
    <br/>
    <a href="registerMarathon.jsp">Back to Registration</a>
</body>
</html>