<%-- 
    Document   : contact
    Created on : 1 May, 2021, 8:15:50 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Pariksha |About page</title>
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
    <!--    Main Content-->
    <main class="main" id="top">
      <nav  class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-flex align-items-center fw-semi-bold fs-3" href="index.html"> <img class="me-3" src="assets/img/gallery/logo2.png" alt="" /></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2" data-anchor="data-anchor">
                  <a class="nav-link fw-medium active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="about.jsp">About</a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="Practicetest.jsp">Practice </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="contact.jsp">Contact </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="Uregister.jsp">Sign up </a></li>
            </ul>
            <form class="ps-lg-5" action="Ulogin.jsp">
              <button class="btn btn-outline-primary order-0" type="submit">Sign in</button>
            </form>
          </div>
        </div>
      </nav>
      <section class="py-0" id="home">

<!-- START of form Section -->
    
<section class="about-company-section">
   <div class="container">
       <div class="row">
           <div class="col-12 text-center">
               <h2>Pariksha | E-Xam Portal  </h2>
               <hr>
           </div>
           <div class="col-md-3 p-1">
                <img  class="img-fluid" src="assets/img/gallery/hero.png" alt="">
           </div>
           <div class="col-md-9">
               <p>
               An online examination system is an online platform that 
is dedicated to conducting online tests of any kind.
Pariksha E-Xam Portal is one such example of an online test portal
that is free and accessible to everyone.

               </p>
               <p>
An online test software is a platform that is used to create online
tests, set practice question papers, conduct online exams and 
evaluate results instantly. Using such an online exam software 
makes exams more accessible and eliminates all the hinges of a 
pen and paper exam.  
              </p>
              <p>
    Useful for school, college, university, teachers and professors
    for managing question papers and examinations. Recruiting 
    agencies, companies can use it for candidate's skills 
    evaluation by conducting online test.
              </p>
           </div>
       </div>
   </div>
</section>
<!-- start of News Letter code section -->
        
            
        </div>
      </section>
    </main>
  
    
    <script src="Bootstrap/js/jquery-3.5.1.slim.min.js" ></script>
    <script src="Bootstrap/js/popper.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
