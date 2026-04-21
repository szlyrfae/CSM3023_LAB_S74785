<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 3:36:49 pm
    Author     : syaziyah
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Quotation Result</title>
        <link rel="stylesheet" href="style.css">
        <style>
            .result-card {
                background: white;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
                width: 450px;
            }
            h2 {
                color: #333;
                text-align: center;
                border-bottom: 2px solid purple;
                padding-bottom: 10px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            td {
                padding: 10px;
                border-bottom: 1px solid #eee;
            }
            .label {
                font-weight: bold;
                color: #555;
            }
            .total-row {
                background-color: #f9f9f9;
                font-size: 1.2em;
                font-weight: bold;
            }

            .btn-back {
                display: block;
                width: 100%;
                padding: 10px;
                margin-top: 20px;
                background-color: grey ;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                text-decoration: none;
                text-align: center;
            }
            .btn-back:hover {
                background: #2980b9;
            }
        </style>
    </head>
    <body>
        <%
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String coverage = request.getParameter("coverage");
            String ncdStr = request.getParameter("ncd");
            double price = 0;
            double ncdPercent = 0;

            try {
                price = Double.parseDouble(request.getParameter("price"));
                ncdPercent = Double.parseDouble(ncdStr);
            } catch (Exception e) {
                price = 0;
                ncdPercent = 0;
            }

            double rate = 0;
            String coverageDisplay = "";

            if ("comprehensive".equals(coverage)) {
                rate = 0.05;
                coverageDisplay = "Comprehensive";
            } else {
                rate = 0.02;
                coverageDisplay = "Third Party";
            }

            double grossPremium = price * rate;
            double ncdAmount = grossPremium * (ncdPercent / 100);
            double netPremium = grossPremium - ncdAmount;
            double sst = netPremium * 0.08;
            double totalPayable = netPremium + sst;
        %>
        
        
        <div class="result-card">
            <h2>Insurance Quotation Result</h2>
            <table>
                <tr>
                    <td class="label">IC Number</td>
                    <td class="value"><%= icno%></td>
                </tr>
                <tr>
                    <td class="label">Name</td>
                    <td class="value"><%= name%></td>
                </tr>
                <tr>
                    <td class="label">Coverage Type</td>
                    <td class="value"><%= coverageDisplay%></td>
                </tr>
                <tr>
                    <td class="label">Vehicle Market Price</td>
                    <td class="value">RM <%= String.format("%.2f", price)%></td>
                </tr>
                <tr>
                    <td class="label">Base Insurance</td>
                    <td class="value">RM <%= String.format("%.2f", grossPremium)%></td>
                </tr>
                <tr>
                    <td class="label">NCD Discount (<%= ncdPercent%>%)</td>
                    <td class="value">- RM <%= String.format("%.2f", ncdAmount)%></td>
                </tr>
                <tr>
                    <td class="label">After NCD</td>
                    <td class="value">RM <%= String.format("%.2f", netPremium)%></td>
                </tr>
                <tr>
                    <td class="label">SST (8%)</td>
                    <td class="value">RM <%= String.format("%.2f", sst)%></td>
                </tr>
                <tr class="total-row">
                    <td class="total-label">Final Insurance Amount: </td>
                    <td class="total-value">RM <%= String.format("%.2f", totalPayable)%></td>
                </tr>
            </table>

            <a href="insuranceQuotation.jsp" class="btn-back">Back</a>
        </div>   
    </body>
</html>