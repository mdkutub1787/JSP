<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    
    .container {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }
    a {
        display: inline-block;
        margin: 10px 0;
        padding: 10px 20px;
        color: #fff;
        background-color: #4CAF50;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s;
    }
    a:hover {
        background-color: #45a049;
    }
    .date {
        margin-bottom: 20px;
        font-size: 16px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="date">
            <h2> <%= new java.util.Date() %></h2>
        </div>
        <h3>       
            <a href="studentaddform.jsp">Add Student</a><br>
            <a href="viewallstudent.jsp">View All Student</a>
        </h3>
    </div>
     </body>
</html>

