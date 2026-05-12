<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Payroll</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background: #f4f4f4; }
        h2   { color: #2c3e50; }
        table { width: 100%; border-collapse: collapse; background: white; box-shadow: 0 2px 6px rgba(0,0,0,0.1); }
        th   { background: #2c3e50; color: white; padding: 12px; text-align: left; }
        td   { padding: 10px 12px; border-bottom: 1px solid #ddd; }
        tr:hover td { background: #f0f4f8; }
        .senior { color: green;  font-weight: bold; }
        .junior { color: #e67e22; font-weight: bold; }
    </style>
</head>
<body>

<h2>Employee Payroll Display System</h2>

<table>
    <tr>
        <th>Emp ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Basic Salary (RM)</th>
        <th>Status</th>
    </tr>

    <c:forEach var="emp" items="${employeeList}">
        <tr>
            <td>${emp.empId}</td>
            <td>${emp.name}</td>
            <td>${emp.department}</td>
            <td>${emp.basicSalary}</td>
            <td>
                <c:choose>
                    <c:when test="${emp.basicSalary >= 3000}">
                        <span class="senior">Senior</span>
                    </c:when>
                    <c:otherwise>
                        <span class="junior">Junior</span>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>