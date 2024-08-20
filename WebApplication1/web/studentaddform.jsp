<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Form</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container d-flex justify-content-center align-items-center min-vh-100">
            <div class="form-container bg-white p-4 rounded shadow-sm" style="max-width: 400px; width: 100%;">
                <h1 class="text-center mb-4">Student Form</h1>
                <form action="saveStudent.jsp" method="post">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" class="form-control">
                    </div>
                    
                    <div class="form-group">
                        <label for="department">Department:</label>
                        <select id="department" name="department" class="form-control">
                            <!-- Replace these options with actual subjects -->
                            <option value="Mathematics">Mathematics</option>
                            <option value="Physics">Physics</option>
                            <option value="Chemistry">Chemistry</option>
                            <option value="Biology">Biology</option>
                           
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Gender:</label>
                        <div class="form-check">
                            <input type="radio" id="male" name="gender" value="Male" class="form-check-input">
                            <label for="male" class="form-check-label">Male</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" id="female" name="gender" value="Female" class="form-check-input">
                            <label for="female" class="form-check-label">Female</label>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-secondary">Save</button>
                </form>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
