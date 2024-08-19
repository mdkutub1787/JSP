<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Form</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <div class="col-md-6 mx-auto">
                <h1 class="mb-4 text-center">Teacher Form</h1>
                <form action="saveStudent.jsp" method="post">
                    <!-- Name Input -->
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    
                    <!-- Department Dropdown -->
                    <div class="form-group">
                        <label for="department">Department:</label>
                        <select class="form-control" id="department" name="department" required>
                            <option value="" disabled selected>Select Department</option>
                            <option value="Java">Java</option>
                            <option value="Python">Python</option>
                            <option value="Gave">Gave</option>
                            <option value="Networking">Networking</option>
                        </select>
                    </div>
                    
                    <!-- Gender Radio Buttons -->
                    <div class="form-group">
                        <label>Gender:</label>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" value="Male" id="male" required>
                            <label class="form-check-label" for="male">Male</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" value="Female" id="female" required>
                            <label class="form-check-label" for="female">Female</label>
                        </div>
                    </div>
                    
                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary btn-block">Save</button>
                </form>
            </div>
        </div>
        
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
