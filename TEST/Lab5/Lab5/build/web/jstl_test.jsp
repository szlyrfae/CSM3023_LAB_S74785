<%-- 
    Document   : jstl_test
    Created on : 12 May 2026, 6:49:23 am
    Author     : BLADEKAZUMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Date & Time Formatting</title>
    </head>
    <body>
        
        <h2>Testing JSTL Date & Time Formatting</h2>
    
        <%-- Mengambil tarikh semasa menggunakan JavaBean java.util.Date --%>
        <jsp:useBean id="now" class="java.util.Date" />

        <p>1. Date Only (Default): 
            <strong><fmt:formatDate value="${now}" type="date" /></strong> 
        </p>
    
        <p>2. Time Only (Default): 
            <strong><fmt:formatDate value="${now}" type="time" /></strong> 
        </p>
    
        <p>3. Both Date & Time: 
            <strong><fmt:formatDate value="${now}" type="both" /></strong> 
        </p>
    
        <p>4. Long Date & Short Time: 
            <strong><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="short" /></strong> 
        </p>
    
        <p>5. Custom Pattern (dd MMMM yyyy, hh:mm:ss a): 
            <strong><fmt:formatDate value="${now}" pattern="dd MMMM yyyy, hh:mm:ss a" /></strong> 
        </p>
        
        <h2>JSTL CONDITIONAL TEST</h2>
        <c:set var="score" value="85" />
        <p>Student Score: <c:out value="${score}" /> marks.</p>
    
        <c:if test="${score >= 50}">
            <p style="color: green;"><strong>Status: Pass! Congratulations.</strong>
            </p>
        </c:if>
        <c:if test="${score < 50}">
            <p style="color: red;"><strong>Status: Fail. Please try again.</strong>
            </p>
        </c:if>
    </body>
</html>
