<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action (Forward)</title>
    </head>
    <body>
        
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="uname" value="Athirah Syaziyah binti 'Azman"/>
            <jsp:param name="email" value="syaziyah@umt.edu.my"/>
            <jsp:param name="nationality" value="Malaysia"/>
            <jsp:param name="background" value="Student"/>
        </jsp:forward>
    </body>
</html>