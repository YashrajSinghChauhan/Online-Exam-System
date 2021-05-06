<%-- 
    Document   : Test
    Created on : 26 Apr, 2021, 11:48:34 AM
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
        <h1>Hello World!</h1>
        <%String s2=request.getParameter("name");
 %>
 <%=s2%>
    </body>
</html>
