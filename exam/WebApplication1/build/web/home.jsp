<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #ffffff;
                color: #000000;
                margin: 0;
                padding: 0;
                text-align: center;
            }
            
            .container {
                padding: 20px;
                max-width: 400px;
                margin: 100px auto;
                border: 1px solid #ccc;
                background-color: #f9f9f9;
            }
            
            a {
                display: block;
                margin: 10px 0;
                padding: 10px;
                color: #000000;
                background-color: #e7e7e7;
                text-decoration: none;
                border: 1px solid #ccc;
            }
            
            a:hover {
                background-color: #d7d7d7;
            }
            
            .date {
                margin-bottom: 20px;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="date">
                <!-- Date will be displayed here -->
            </div>
            <h3>
                <a href="studentaddform.jsp">Add Teacher</a>
                <a href="viewallstudent.jsp">View All Teacher</a>
            </h3>
        </div>
    </body>
</html>
