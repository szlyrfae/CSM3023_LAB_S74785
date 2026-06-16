<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.StudentBean"%>
<%@page import="com.lab.bean.SubjectBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Subjects</title>
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

    List<SubjectBean> subjectList = (List<SubjectBean>) request.getAttribute("subjectList");
%>
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h4>My Registered Subjects</h4>
        <div>
            <a href="registerSubject.jsp" class="btn btn-success btn-sm">+ Add Subject</a>
            <a href="../dashboard.jsp" class="btn btn-secondary btn-sm ms-2">Dashboard</a>
            <a href="../UserServlet?action=logout" class="btn btn-dark btn-sm ms-2">Logout</a>
        </div>
    </div>
    <p class="text-muted">Welcome, <strong><%= user.getFullname() %></strong> | Matric: <%= user.getMatricNo() %></p>

    <table class="table table-bordered table-hover bg-white shadow-sm">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Subject Code</th>
                <th>Subject Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            if (subjectList == null || subjectList.isEmpty()) {
        %>
            <tr>
                <td colspan="4" class="text-center text-muted">No subjects registered yet.</td>
            </tr>
        <%
            } else {
                int count = 1;
                for (SubjectBean s : subjectList) {
        %>
            <tr>
                <td><%= count++ %></td>
                <td><%= s.getSubjectCode() %></td>
                <td><%= s.getSubjectName() %></td>
                <td>
                    <a href="../SubjectServlet?action=showEdit&id=<%= s.getId() %>"
                       class="btn btn-warning btn-sm">Edit</a>
                    <a href="../SubjectServlet?action=delete&id=<%= s.getId() %>"
                       class="btn btn-danger btn-sm ms-1"
                       onclick="return confirm('Delete this subject?');">Delete</a>
                </td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>