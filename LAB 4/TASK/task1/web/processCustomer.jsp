<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Discount Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <%
        // 1. Fixed price
        final double price = 10.0;

        // 2. Retrieve form data
        String cust_no = request.getParameter("customerCode");
        String cust_type = request.getParameter("customerType");
        
        int quantity = 0;
        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (Exception e) {
            quantity = 0;
        }

        // 3. Business logic
        double total = 0;
        String message = "";

        // Note: In the HTML, value="normal" or "privilege" was used. 
        // Based on your reference logic, we check for "1" (Normal) or "2" (Privilege).
        if (cust_type.equals("1") && quantity > 100) {
            message = "You're entitled to 10% discount";
            total = quantity * price * 0.9;
        } 
        else if (cust_type.equals("2") && quantity > 100) {
            message = "You're entitled to 25% discount";
            total = quantity * price * 0.75;
        } 
        else {
            message = "You're not entitled to any discount";
            total = quantity * price;
        }

        // 4. Display customer type string
        String custTypeDisplay = cust_type.equals("1") ? "Normal Customer" : "Privilege Customer";
    %>

    <div class="container">
        <h1>Customer Discount Result</h1>

        <div class="card">
            <h2 class="form-title">Transaction Summary</h2>

            <div class="result-box">
                <div class="result-group">
                    <label>Customer Code:</label>
                    <p><%= cust_no %></p>
                </div>

                <div class="result-group">
                    <label>Quantity:</label>
                    <p><%= quantity %></p>
                </div>

                <div class="result-group">
                    <label>Customer Type:</label>
                    <p><%= custTypeDisplay %></p>
                </div>

                <div class="result-group">
                    <label>Status:</label>
                    <p><%= message %></p>
                </div>

                <div class="result-group">
                    <label>Total Amount:</label>
                    <p>RM <%= String.format("%.2f", total) %></p>
                </div>
            </div>

            <div class="button-group">
                <button onclick="window.history.back();" class="btn btn-back">Back</button>
            </div>
        </div>
    </div>

</body>
</html>