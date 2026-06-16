<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.StudentBean"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Subject</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<%
    // Session check
    StudentBean user = (StudentBean) session.getAttribute("loggedUser");
    if (user == null) {
        response.sendRedirect("../login.html");
        return;
    }
%>
<div class="container mt-5" style="max-width:500px;">
    <div class="card shadow p-4">
        <h4 class="mb-3">Register New Subject</h4>
        <p class="text-muted">Student: <strong><%= user.getFullname() %></strong> (<%= user.getMatricNo() %>)</p>

        <form action="../SubjectServlet" method="POST">
            <input type="hidden" name="action" value="add">

            <div class="mb-3">
                <label class="form-label">Subject Code</label>
                <input type="text" name="subjectCode" class="form-control" required placeholder="e.g. CSA3023">
            </div>
            <div class="mb-3">
                <label class="form-label">Subject Name</label>
                <input type="text" name="subjectName" class="form-control" required placeholder="e.g. Web-Based Application Development">
            </div>

            <button type="submit" class="btn btn-success w-100">Register Subject</button>
            <a href="../SubjectServlet?action=view" class="btn btn-secondary w-100 mt-2">Back to My Subjects</a>
        </form>
    </div>
</div>
</body>
</html>