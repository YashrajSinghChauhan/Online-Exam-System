<%-- 
    Document   : StudentLogout
    Created on : 4 May, 2021, 2:30:44 PM
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
    <body >
        <h1>Logout Page</h1>
        <%
        session.removeAttribute("USERname");
        session.removeAttribute("USERpass");
        session.invalidate();
        response.sendRedirect("index.html");
        
        
        %>
        
    </body>
</html>
