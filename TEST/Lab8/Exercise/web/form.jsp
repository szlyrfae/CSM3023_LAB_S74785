<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${empty car ? 'Add New Car' : 'Edit Car'} – Car Shop</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<div class="container">
    <header>
        <h1>🚗 Car Shop – ${empty car ? 'Add New Car' : 'Edit Car'}</h1>
    </header>

    <div class="form-card">
        <form action="${pageContext.request.contextPath}/cars" method="post">

            <%-- Hidden fields for action routing --%>
            <input type="hidden" name="action" value="${empty car ? 'insert' : 'update'}">
            <c:if test="${not empty car}">
                <input type="hidden" name="carId" value="${car.carId}">
            </c:if>

            <div class="form-group">
                <label for="brand">Brand</label>
                <input type="text" id="brand" name="brand" maxlength="15"
                       value="${car.brand}" placeholder="e.g. Toyota" required>
            </div>

            <div class="form-group">
                <label for="model">Model</label>
                <input type="text" id="model" name="model" maxlength="30"
                       value="${car.model}" placeholder="e.g. Camry" required>
            </div>

            <div class="form-group">
                <label for="cylinder">Cylinder</label>
                <input type="number" id="cylinder" name="cylinder" min="1" max="16"
                       value="${car.cylinder}" placeholder="e.g. 4" required>
            </div>

            <div class="form-group">
                <label for="price">Price (RM)</label>
                <input type="number" id="price" name="price" step="0.01" min="0"
                       value="${car.price}" placeholder="e.g. 150000.00" required>
            </div>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary">
                    ${empty car ? 'Add Car' : 'Update Car'}
                </button>
                <a href="${pageContext.request.contextPath}/cars" class="btn btn-secondary">
                    Cancel
                </a>
            </div>

        </form>
    </div>
</div>

</body>
</html>
