<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Management Main Hub</title>
</head>
<body>
    <center>
        <h1>Employee Management System</h1>
        <h2>Menu Management</h2>
        <ul>
            <li><a href="<%=request.getContextPath()%>/list">All Employee List</a></li>
            <li><a href="<%=request.getContextPath()%>/new">Add a New Employee</a></li>
            <li><a href="<%=request.getContextPath()%>/list">Edit Employee</a></li>
        </ul>
    </center>
</body>
</html>