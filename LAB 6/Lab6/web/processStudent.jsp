<%@ page import="lab6.com.Book" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Student</title>
    </head>
    <body>
        <h1>Lab 6 - Task 3: Process Student</h1>

        <%
            try {
                Book student = new Book();
                student.setStuid(request.getParameter("stuid"));   // regex validation
                student.setStuname(request.getParameter("stuname"));
                student.setStuprogram(request.getParameter("stuprogram"));
                student.setAddress(request.getParameter("address"));

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3307/CSA3203", "root", "");

                PreparedStatement ps = con.prepareStatement(
                        "INSERT INTO Student(stuid, stuname, stuprogram, address) VALUES (?, ?, ?, ?)");
                ps.setString(1, student.getStuid());
                ps.setString(2, student.getStuname());
                ps.setString(3, student.getStuprogram());
                ps.setString(4, student.getAddress());

                int rows = ps.executeUpdate();
                if (rows > 0) {
                    out.println("<p><b>Student record inserted successfully!</b></p>");
                } else {
                    out.println("<p><b>No record inserted.</b></p>");
                }
                con.close();
            } catch (Exception e) {
                // Redirect ke errorStudent.jsp dengan mesej error
                request.setAttribute("errorMessage", e.getMessage());
                RequestDispatcher rd = request.getRequestDispatcher("errorStudent.jsp");
                rd.forward(request, response);
            }
        %>

    </body>
</html>
