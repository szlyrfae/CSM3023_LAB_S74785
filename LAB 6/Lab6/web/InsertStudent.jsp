<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Insert Student</title>
</head>
<body>
    <h1>Lab 6 - Task 3: Insert Student</h1>
    <form action="processStudent.jsp" method="post">
        <label>Student ID:</label>
        <input type="text" name="stuid" required><br><br>

        <label>Student Name:</label>
        <input type="text" name="stuname" required><br><br>

        <label>Program:</label>
        <input type="text" name="stuprogram" required><br><br>

        <label>Address:</label>
        <input type="text" name="address"><br><br>

        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </form>
</body>
</html>
