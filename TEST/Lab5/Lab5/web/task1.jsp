<%-- 
    Document   : task1
    Created on : 12 May 2026, 6:22:24 am
    Author     : BLADEKAZUMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.StudentBean"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task1:Scriplet & Bean</title>
    </head>
    <body>
        <h2>Student Information(Using Scriplet)</h2>
        <%
          //Instantiatng the bean
          StudentBean student = new StudentBean();
          student.setName("Ahmad Ali");
          student.setMatricNo("S123456");
        %>
        
        <p><strong>Name:</strong> <%= student.getName() %></p>
        <p><strong>Matric No:</strong><%= student.getMatricNo() %></p>
        
    </body>
</html>
