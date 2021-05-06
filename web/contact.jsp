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
  <title>Pariksha | Contact page</title>
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
        <!--/.bg-holder-->

<!--        <div class="container">
            <div class="row">
            <div class="col-12 mx-auto align-items-center text-center">
              <h6 class="mb-4 text-uppercase fw-light fs-1 mb-6"></h6>
              <div class="carousel slide" id="carouselExampleDark" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="10000">
                  </div>
                </div>
              </div>    
             </div>
           </div>
           -->
<!--            <section class="breadcrumbs-section">
      <div class="container p-md-3 pl-3 pr-3">
           <div class="row">
               <div class="col-12">
                 <h2>
                Contact US.
                  </h2>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"> <a href="index.html">  </a></li>
                    <li class="breakcrumb-item active"></li>
                  </ol>
               </div>
           </div>
      </div>
  </section>-->
<!-- END of breadCrumbs section -->
<!--
<section>
  <div class="container">
     <div class="row">
         <div class="col-12 ">
           <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti odio rerum accusantium expedita
              sit repudiandae blanditiis et incidunt ipsa ad adipisci aliquam hic, error sint cupiditate aliquid non dolor eveniet.</p>
        
        <hr>
          </div>
     </div>
  </div>
</section>-->

<!-- START of form Section -->

<section class="form-section">
  <div class="container">
     <div class="row">
         <div class="col-md-6 text-center">
           
          <form action="contact.jsp">
              <div class="form-row">
                  
                  <div class="form-group col">
                    <input type="text" class="form-control"  placeholder="Full Name">
                  </div>
                 
                  <div class="form-group col-md-6">
                   <input type="email"  class="form-control"  placeholder="Email Address">
                  </div> 
              </div>
              <div class="form-row">
                    <div class="form-group col-md-6">
                    <input type="number"  class="form-control"  placeholder="Contacr number">
                  </div>
                 
                  <div class="form-group col-md-6">
                       <select  class="form-control"  name="" id="">
                            <option selected>Country</option>
                            <option value="India">India</option>
                            <option value="India">America</option>
                            <option value="India">China</option>
                            <option value="India">New-York</option>
                       </select>
                 </div> 
              
              
                </div>
              
                <div class="form-row">
                  <div class="form-group col-md-12">
                  <input type="text"  class="form-control"  placeholder="Subject">
                  </div> 
               </div>
               
              <div class="form-row">
                 <div class="form-group col-md-12">
                 <textarea class="form-control"  rows="3"></textarea>
                 </div> 
             </div>
             
             <div class="form-row">
                <div class="form-group col-md-12 text-center">
                <button type="submit"  class="btn btn-primary"> <i class="fas fa-paper-plane"></i> Send Message</button>
                </div> 
            </div>
          </form>
      </div>
 <div class="col-md-1 ">
 </div>
      <div class="col-md-5 address">
                  <h5> Call us / WhatsApp</h5>
                 <p><a href="tel:+9399199769"><i class="fas fa-phone"></i>+(91) 9399199769 </a><br></p>
                 <h5>Email /Website</h5>
                 <p>
                   <a href="mailto:rjchouhan591@gmail.com"><i class="fas fa-envelope"> </i> rjchouhan591@gmail.com</a><br>
                   <a href=""><i class="fas fa-globe"></i> &nbsp;www.knightcoder.com</a>
                 </p>
                 <h5>Working Hours</h5>
                 <p>
                   Mon -Fri : 9am - 6pm(IST)
                 </p>
                 <h5>Address</h5>
                 <p>
                   xyz estate, Raj Landmark city, Ratlam - 456776, Madhya Pradesh
                 </p>

           </div>
   
     </div>
  </div>
</section>


<!-- Start of MAP - Section -->
<!--<section>
  <div class="container-fluid">
    <iframe  class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58614.76462273571!2d75
    .00742638321273!3d23.336692507357082!2m3!1f
  0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3963fea373229b5b%3A0xcb0c22405de45a70!2sRatla
  m%2C%20Madhya%20Pradesh%20457001!5e0!3m2!1sen!2sin!4v1602493412427!5m2!1sen!2sin" width="100%" height="300px" frameborder="0"></iframe>
    
  </div>
</section>-->
<!-- end of MAP - Section -->



            
            
            
        </div>
      </section>
    </main>
  
    
    <script src="Bootstrap/js/jquery-3.5.1.slim.min.js" ></script>
    <script src="Bootstrap/js/popper.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
