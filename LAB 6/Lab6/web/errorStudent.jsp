<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Student</title>
</head>
<body>
<h1>Lab 6 - Task 3: Error Page</h1>
<p style="color:red;">
    Error occurred: <%= request.getAttribute("errorMessage") %>
</p>
<a href="InsertStudent.jsp">Go back to Insert Student Form</a>
</body>
</html>
