<%-- 
    Document   : jstl_test
    Created on : 12 May 2026, 3:11:46 pm
    Author     : lyrafayy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL Date & Time Formatting</title>
    </head>
    <body>
        <h2>Testing JSTL Date & Time Formatting</h2>
        <jsp:useBean id="now" class="java.util.Date" />
        <p>1. Date Only (Default):
            <strong>
                <fmt:formatDate value="${now}" type="date" />
            </strong>
        </p>
        <p>2. Time Only (Default):
            <strong>
                <fmt:formatDate value="${now}" type="time" />
            </strong>
        </p>
        <p>3. Both Date & Time:
            <strong>
                <fmt:formatDate value="${now}" type="both" />
            </strong>
        </p>
        <p>4. Long Date & Short Time:
            <strong>
                <fmt:formatDate value="${now}" type="both" dateStyle="long"
                                timeStyle="short" />
            </strong>
        </p>
        <p>5. Custom Pattern (dd MMM yyyy, hh:mm a):
            <strong>
                <fmt:formatDate value="${now}" pattern="dd MMMM yyyy, hh:mm:ss a" />
            </strong>
        </p>
    </body>
</html>
