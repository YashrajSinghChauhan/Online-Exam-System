<%-- 
    Document   : error_exception
    Created on : 5 May, 2021, 11:58:51 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>

<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sorry ! Something Went Wrong</title>
    <link rel="icon" sizes="180x180" href="icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/
          favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons
          /mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="Bootstrap/CSS/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.css">
    
    </head>
    <body>
        <div class="container p-3 text-center">
            <img src="assets/images/500.png" class="img-fluid">
            <h1 class="display-3">Sorry ! something went Wrong</h1>
           <p><%= exception %></p>
           <a class="btn btn-primary" href="index.html">Home Page</a>
        </div>
        
    </body>
</html>
