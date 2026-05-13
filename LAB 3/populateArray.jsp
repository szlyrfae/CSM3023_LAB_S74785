<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 3:14:49 pm
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Populate Array JSP</title>
</head>
<body>
    <h2>Read Java array and populate it into HTML table</h2>

    <%
        // Simpan data jualan dalam array 2D
        String[][] sales = {
            {"Salesman 1", "2500", "2100", "2200"},
            {"Salesman 2", "2000", "1900", "2400"},
            {"Salesman 3", "1800", "2200", "2450"}
        };
    %>

    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>Salesman</th>
            <th>Jan</th>
            <th>Feb</th>
            <th>Mac</th>
        </tr>
        <%
            // Loop untuk papar setiap baris array
            for(int i=0; i<sales.length; i++){
        %>
        <tr>
            <td><%= sales[i][0] %></td>
            <td><%= sales[i][1] %></td>
            <td><%= sales[i][2] %></td>
            <td><%= sales[i][3] %></td>
        </tr>
        <%
            }
        %>
    </table>

    <p>&copy;2026-Syaziyah</p>
</body>
</html>