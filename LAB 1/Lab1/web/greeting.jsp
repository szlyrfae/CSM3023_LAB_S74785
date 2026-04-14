<%-- 
    Document   : Welcome
    Created on : 31 Mar 2026, 4:55:12 pm
    Author     : User
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Greeting Page</title>
    </head>
    <body>
        <h1>Hello, ${name}!</h1>
        
        <h1>
            Display Current Date and Perform Auto Refresh
        </h1>
        
        <%
            Date currentDate = new Date();
            out.println("<p>Current date and time is " + currentDate.toString() + "</p>");
            %>
         <% response.setIntHeader("Refresh", 5); %>
    </body>
</html>
