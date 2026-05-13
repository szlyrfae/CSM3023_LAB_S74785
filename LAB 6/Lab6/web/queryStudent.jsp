<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Retrieve Student Records</title>
    </head>
    <body>
        <h1>Lab 6 - Task 4: Retrieving record via JSP Page</h1>

        <table border="1" cellpadding="8">
            <tr style="background-color: lightblue;">
                <th>Student ID</th>
                <th>Name</th>
                <th>Program</th>
                <th>Address</th>
            </tr>

            <%
                Connection con = null;
                try {
                    // 1. Load driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // 2. Connect ke database CSA3203 (port 3307 ikut setting kamu)
                    con = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3307/CSA3203", "root", "");

                    // 3. Execute query
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("SELECT * FROM Student");

                    // 4. Loop result dan paparkan dalam table
                    while (rs.next()) {
                        out.println("<tr>");
                        out.println("<td>" + rs.getString("stuid") + "</td>");
                        out.println("<td>" + rs.getString("stuname") + "</td>");
                        out.println("<td>" + rs.getString("stuprogram") + "</td>");
                        out.println("<td>" + rs.getString("address") + "</td>");
                        out.println("</tr>");
                    }

                    rs.close();
                    st.close();
                    con.close();
                } catch (Exception e) {
                    out.println("<tr><td colspan='4' style='color:red;'>Error: " + e.getMessage() + "</td></tr>");
                }
            %>
        </table>

    </body>
</html>
