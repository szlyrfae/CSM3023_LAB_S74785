<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Parameter Example</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>

        <div class="container">
            <h1>Using jsp:include and jsp:param to display information on JSP Page</h1>

            <div class="card">
                <h2 class="form-title">Calling SubjectInfo.Jsp Page</h2>

                <jsp:include page="subjectInfo.jsp">
                    <jsp:param name="code" value="CSE3023" />
                    <jsp:param name="subject" value="Web-based Application Development" />
                    <jsp:param name="credit" value="3(2+1)" />
                </jsp:include>

            </div>
        </div>

    </body>
</html>