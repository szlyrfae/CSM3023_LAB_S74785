<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Shop – Price List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<div class="container">
    <header>
        <h1>🚗 Car Shop – Price List</h1>
    </header>

    <div class="toolbar">
        <a href="${pageContext.request.contextPath}/cars?action=new" class="btn btn-primary">
            ＋ Add New Car
        </a>
    </div>

    <c:choose>
        <c:when test="${empty cars}">
            <p class="empty-msg">No cars found. Add one!</p>
        </c:when>
        <c:otherwise>
            <table>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Brand</th>
                        <th>Model</th>
                        <th>Cylinder</th>
                        <th>Price (RM)</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="car" items="${cars}" varStatus="loop">
                        <tr>
                            <td>${loop.count}</td>
                            <td>${car.brand}</td>
                            <td>${car.model}</td>
                            <td>${car.cylinder}</td>
                            <td><fmt:formatNumber value="${car.price}" type="number" minFractionDigits="2" maxFractionDigits="2"/></td>
                            <td class="actions">
                                <a href="${pageContext.request.contextPath}/cars?action=edit&id=${car.carId}"
                                   class="btn btn-warning">Edit</a>
                                <a href="${pageContext.request.contextPath}/cars?action=delete&id=${car.carId}"
                                   class="btn btn-danger"
                                   onclick="return confirm('Delete ${car.brand} ${car.model}?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
