<%-- 
    Document   : process
    Created on : 12 May 2026, 6:41:31 am
    Author     : BLADEKAZUMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Calculation Result</h2>
        <jsp:useBean id="calc" class="com.lab.bean.CalculatorBean" />
        <jsp:setProperty name="calc" property="*" />
    
        <p>The sum of 
            <jsp:getProperty name="calc" property="number1" /> and 
            <jsp:getProperty name="calc" property="number2" /> is: 
            <strong><jsp:getProperty name="calc" property="sum" /></strong>
        </p>
        
        <br><a href="calculator.html">Calculate Again</a>
    </body>
</html>
