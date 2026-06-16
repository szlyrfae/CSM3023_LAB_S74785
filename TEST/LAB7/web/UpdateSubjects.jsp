<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.StudentBean"%>
<%@page import="com.lab.bean.SubjectBean"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Subject</title>
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

    SubjectBean subject = (SubjectBean) request.getAttribute("subject");
    if (subject == null) {
        response.sendRedirect("../SubjectServlet?action=view");
        return;
    }
%>
<div class="container mt-5" style="max-width:500px;">
    <div class="card shadow p-4">
        <h4 class="mb-3">Update Subject</h4>

        <form action="../SubjectServlet" method="POST">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="<%= subject.getId() %>">

            <div class="mb-3">
                <label class="form-label">Subject Code</label>
                <input type="text" name="subjectCode" class="form-control"
                       value="<%= subject.getSubjectCode() %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Subject Name</label>
                <input type="text" name="subjectName" class="form-control"
                       value="<%= subject.getSubjectName() %>" required>
            </div>

            <button type="submit" class="btn btn-primary w-100">Update Subject</button>
            <a href="../SubjectServlet?action=view" class="btn btn-secondary w-100 mt-2">Cancel</a>
        </form>
    </div>
</div>
</body>
</html>