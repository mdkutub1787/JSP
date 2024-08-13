<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
String id = request.getParameter("id");
Student s = StudentDao.getById(Integer.parseInt(id));
String gender = s.getGender();  // Assuming the Student model has a getGender() method
String department = s.getDepartment();  // Assuming the Student model has a getDepartment() method
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Update Form</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <div class="col-md-6 mx-auto">
                <h1 class="mb-4 text-center">Teacher Update Form</h1>
                <form action="updatestudent.jsp" method="post">
                    <input type="hidden" name="id" value="<%=s.getId()%>">

                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%=s.getName()%>" required>
                    </div>

                    <div class="form-group">
                        <label for="department">Department:</label>
                        <select class="form-control" id="department" name="department">
                            <option value="Java" <%= "Java".equals(department) ? "selected" : "" %>>Java</option>
                            <option value="Python" <%= "Python".equals(department) ? "selected" : "" %>>Python</option>
                            <option value="Gave" <%= "Gave".equals(department) ? "selected" : "" %>>Gave</option>
                            <option value="Networking" <%= "Networking".equals(department) ? "selected" : "" %>>Networking</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Gender:</label>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" value="Male" <%= "Male".equals(gender) ? "checked" : "" %>>
                            <label class="form-check-label">Male</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="gender" value="Female" <%= "Female".equals(gender) ? "checked" : "" %>>
                            <label class="form-check-label">Female</label>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary btn-sm btn-block">Save</button>
                </form>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
