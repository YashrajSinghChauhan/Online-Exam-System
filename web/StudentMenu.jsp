<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pariksha |Student Menu</title>
    <!--    Favicons-->
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

    <!--    Stylesheets-->
    <link href="assets/css/theme.css" rel="stylesheet" />
  
    
    </head>
    <body>
       
       <main class="main" id="top">
      <nav style="background:rgba(0,0,0,0.8);font-size:20px " class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
          <div class="container"><a class="navbar-brand d-flex align-items-center fw-semi-bold fs-3" href="index.html"> <img class="me-3" src="" alt="" />Pariksha</a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul  class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <!--<li class="nav-item px-2" data-anchor="data-anchor">-->
<!--                  <a class="nav-link fw-medium active" aria-current="page" href="index.html">Home</a>
              </li>-->
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Exam.jsp">Exam Test </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Practicetest.jsp">Practice </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Result.jsp">Result</a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="StudentProfile.jsp">Profile</a></li>
            </ul>
            <form  class="ps-lg-5" action="StudentLogout.jsp">
              <button class="btn btn-outline-info order-0" style="color: white" type="submit">Logout</button>
            </form>
          </div>
        </div>
      </nav>
    
        
       </body>
</html>
