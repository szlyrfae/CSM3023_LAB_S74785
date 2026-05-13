<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Author</title>
    </head>
    <body>
        <h1>Lab 6 - Task 2: Process Author</h1>

        <%
            String authno = request.getParameter("authno");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zip = request.getParameter("zip");

            Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3307/CSA3203", "root", "");

                PreparedStatement ps = con.prepareStatement(
                        "INSERT INTO Author(authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)");
                ps.setString(1, authno);
                ps.setString(2, name);
                ps.setString(3, address);
                ps.setString(4, city);
                ps.setString(5, state);
                ps.setString(6, zip);

                int rows = ps.executeUpdate();
                if (rows > 0) {
                    out.println("<p><b>Author record inserted successfully!</b></p>");
                } else {
                    out.println("<p><b>No record inserted.</b></p>");
                }

                con.close();
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            }
        %>

    </body>
</html>
