<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Marathon Registration</title>
</head>
<body>
    <h2>Marathon Registration Form</h2>
    <form action="processMarathon.jsp" method="post">
        <table>
            <tr>
                <td>Runner Name:</td>
                <td><input type="text" name="runnerName" required/></td>
            </tr>
            <tr>
                <td>Runner IC:</td>
                <td><input type="text" name="runnerIC" required/></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td>
                    <select name="category">
                        <option value="5KM">5KM</option>
                        <option value="10KM">10KM</option>
                        <option value="21KM">21KM</option>
                        <option value="42KM">42KM</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>T-Shirt Size:</td>
                <td>
                    <select name="tShirtSize">
                        <option value="S">S</option>
                        <option value="M">M</option>
                        <option value="L">L</option>
                        <option value="XL">XL</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Register"/>
                    <input type="reset" value="Clear"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>