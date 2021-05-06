<%-- 
    Document   : Alogout
    Created on : 4 May, 2021, 10:10:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%     
        session.removeAttribute("Adminname");
        response.sendRedirect("Adminlogin.jsp");
        %>
        </body>
</html>
