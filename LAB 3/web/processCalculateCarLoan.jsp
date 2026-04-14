<%-- 
    Document   : processCalculateCarLoan
    Created on : 14 Apr 2026, 3:45:21 pm
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Perform Car Loan Calculation</title>
</head>
<body>
    <h2>Perform Car Loan Calculation</h2>

    <%
        // Retrieve data from the form
        String loanAmountStr = request.getParameter("loanAmount");
        String loanPeriodStr = request.getParameter("loanPeriod");

        double loanAmount = Double.parseDouble(loanAmountStr);
        int loanPeriod = Integer.parseInt(loanPeriodStr);

        // Example interest rate: 5% per year
        double interestRate = 0.05;
        double totalInterest = loanAmount * interestRate * loanPeriod;
        double totalLoan = loanAmount + totalInterest;
    %>

    <h3>Details of car loan:</h3>
    <p>Loan Request: <%= loanAmount %></p>
    <p>Period of payment: <%= loanPeriod %> years</p>
    <p>Total Loan (+ interest): <%= totalLoan %></p>

    <p>&copy;2026-Syaziyah</p>
</body>
</html>
