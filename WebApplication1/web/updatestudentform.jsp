<%@page import="model.Student" %>
<%@page import="dao.StudentDao" %>

<%
String id = request.getParameter("id");
Student s = StudentDao.getById(Integer.parseInt(id));
String gender = s.getGender();
String department = s.getDepartment(); // This is used for subjects, assuming it’s what you meant.
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Update Form</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="text-center mb-4">Student Update Form</h1>
                            <form action="updatestudent.jsp" method="post">
                                <input type="hidden" name="id" value="<%=s.getId()%>">

                                <div class="form-group">
                                    <label for="name">Name:</label>
                                    <input type="text" id="name" name="name" class="form-control" value="<%=s.getName()%>">
                                </div>

                                <div class="form-group">
                                    <label for="department">Department:</label>
                                    <select id="department" name="department" class="form-control">
                                        <!-- Replace these options with actual subjects -->
                                        <option value="Mathematics" <%= "Mathematics".equals(department) ? "selected" : "" %>>Mathematics</option>
                                        <option value="Physics" <%= "Physics".equals(department) ? "selected" : "" %>>Physics</option>
                                        <option value="Chemistry" <%= "Chemistry".equals(department) ? "selected" : "" %>>Chemistry</option>
                                        <option value="Biology" <%= "Biology".equals(department) ? "selected" : "" %>>Biology</option>
                                       
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Gender:</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" value="Male" <%= "Male".equals(gender) ? "checked" : "" %>>
                                        <label class="form-check-label">Male</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" value="Female" <%= "Female".equals(gender) ? "checked" : "" %>>
                                        <label class="form-check-label">Female</label>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary btn-block">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
