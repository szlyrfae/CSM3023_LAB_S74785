<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insert Author</title>
    </head>
    <body>
        <h1>Lab 6 - Task 2: Insert Author</h1>
        <form action="processAuthor.jsp" method="post">
            <label>Author No:</label>
            <input type="text" name="authno" required><br><br>

            <label>Name:</label>
            <input type="text" name="name" required><br><br>

            <label>Address:</label>
            <input type="text" name="address"><br><br>

            <label>City:</label>
            <input type="text" name="city"><br><br>

            <label>State:</label>
            <input type="text" name="state"><br><br>

            <label>Zip:</label>
            <input type="text" name="zip"><br><br>

            <input type="submit" value="Submit">
            <input type="reset" value="Cancel">
        </form>
    </body>
</html>
