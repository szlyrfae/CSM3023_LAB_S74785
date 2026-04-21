<%-- 
    Document   : insuranceQuotation
    Created on : 21 Apr 2026, 3:21:36 pm
    Author     : syaziyah
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insurance Quotation System</title>
        <link rel="stylesheet" href="style.css">
        </head>
    <body>
        <div class="container">
            <div class="card">
                <h2 class="form-title">Insurance Quotation</h2>
                <form action="processInsuranceQuo.jsp" method="POST">
                    <div class="form-group">
                        <label>IC Number:</label>
                        <input type="text" name="icno" required>
                    </div>
                    <div class="form-group">
                        <label>Name:</label>
                        <input type="text" name="name" required>
                    </div>
                    <div class="form-group">
                        <label>Coverage Type:</label>
                        <select name="coverage">
                            <option value="comprehensive">Comprehensive</option>
                            <option value="third_party">Third Party</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Vehicle Price (RM):</label>
                        <input type="number" step="0.01" name="price" required>
                    </div>
                    <div class="form-group">
                        <label>NCD (%):</label>
                        <input type="number" step="0.01" name="ncd" required>
                    </div>
                    <div class="button-group">
                        <button type="submit" class="btn btn-submit">Calculate</button>
                        <button type="reset" class="btn btn-cancel">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>