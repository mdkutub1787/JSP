<jsp:useBean class="model.Student" id="s"/>
<%@page import="dao.StudentDao" %>
<jsp:setProperty name="s" property="*"/>

<%
int i=StudentDao.saveStudent(s);

if(i>0){
    respons.sendRedirect("success.jsp");
    }
    else{
     respons.sendRedirect("error.jsp");
    }

%>