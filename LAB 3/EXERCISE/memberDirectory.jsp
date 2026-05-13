<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 4:53:04 pm
    Author     : User
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
    import="java.util.ArrayList"%>
<html>
<head><title>Club Member Directory</title></head>
<body>
    <%@ include file="header.jsp" %>

    <h2>Club Committee Members</h2>
    <%
        ArrayList<String> members = new ArrayList<String>();
        members.add("Athirah");
        members.add("Syaziyah");
        members.add("Azman");
        members.add("Syazalydia");
        members.add("Syazana");
    %>
    <table border="1">
        <tr><th>Member Name</th></tr>
        <%
            for(String m : members){
        %>
            <tr><td><%= m %></td></tr>
        <%
            }
        %>
    </table>

    <%@ include file="footer.jsp" %>
</body>
</html>
