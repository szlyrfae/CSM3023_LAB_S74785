<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forwarded Information</title>
        <link rel="stylesheet" href="style.css">
        
        <%
            String name = request.getParameter("uname");
            String email = request.getParameter("email");
            String nationality = request.getParameter("nationality");
            String background = request.getParameter("background");
        %>
    </head>
    <body>

        <div class="container">
            <h1>Using jsp:forward to display user info</h1>

            <div class="card">
                <h2 class="form-title">Forwarded Info</h2>
                
                <div class="result-box" style="border: none; background: transparent; padding: 0;">
                    
                    <div class="result-group" style="border: none; padding: 5px 0;">
                        <label style="display: inline;">Name:</label>
                        <p style="display: inline;"><%= name %></p>
                    </div>

                    <div class="result-group" style="border: none; padding: 5px 0;">
                        <label style="display: inline;">Email:</label>
                        <p style="display: inline;"><%= email %></p>
                    </div>

                    <div class="result-group" style="border: none; padding: 5px 0;">
                        <label style="display: inline;">Nationality:</label>
                        <p style="display: inline;"><%= nationality %></p>
                    </div>

                    <div class="result-group" style="border: none; padding: 5px 0;">
                        <label style="display: inline;">Background:</label>
                        <p style="display: inline;"><%= background %></p>
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>