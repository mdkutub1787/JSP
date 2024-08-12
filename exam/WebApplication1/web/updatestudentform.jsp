<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
String id = request.getParameter("id");
Student s = StudentDao.getById(Integer.parseInt(id));
String gender = s.getGender();  // Assuming the Student model has a getGender() method
String subject = s.getSubject();  // Assuming the Student model has a getSubject() method
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Update Form</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <div class="col-md-6 mx-auto">
                <h1 class="mb-4 text-center">Student Update Form</h1>
                <form action="updatestudent.jsp" method="post">
                    <input type="hidden" name="id" value="<%=s.getId()%>">

                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%=s.getName()%>" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="<%=s.getEmail()%>" required>
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

                    <div class="form-group">
                        <label for="subject">Subject:</label>
                        <select class="form-control" id="subject" name="subject">
                            <option value="Java" <%= "Java".equals(subject) ? "selected" : "" %>>Java</option>
                            <option value="Python" <%= "Python".equals(subject) ? "selected" : "" %>>Python</option>
                            <option value="Gave" <%= "Gave".equals(subject) ? "selected" : "" %>>Gave</option>
                            <option value="Networking" <%= "Networking".equals(subject) ? "selected" : "" %>>Networking</option>
                        </select>
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
