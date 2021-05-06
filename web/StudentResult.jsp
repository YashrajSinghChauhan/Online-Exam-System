<%-- 
    Document   : StudentResult
    Created on : 1 May, 2021, 10:10:42 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="StudentMenu.jsp" %>--%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha |Result Page</title>
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
     <%
      response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("Pragma","no-cache");
      response.setHeader("Expires","0");
      if(session.getAttribute("USERname")==null)
      response.sendRedirect("Ulogin.jsp");
      
        
        


%>
        
        
        <%!
         int ROLLNO=0;
         int T=0,C=0,W=0;
     %>   
<%
   String name=(String)session.getAttribute("USERname");
   String pass=(String)session.getAttribute("USERpass");
   String subject=request.getParameter("subject");
   C=Integer.parseInt(request.getParameter("C"));
   W=Integer.parseInt(request.getParameter("W"));
   T=Integer.parseInt(request.getParameter("T"));
%>        

<!--    Main Content-->

<%

try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
       String id="root";
       String passs="root";
       Connection con=DriverManager.getConnection(url,id,passs);
       Statement st=con.createStatement();
       String q1="select * from userregister where NAME='"+name+"' && PASSWORD='"+pass+"'";
       ResultSet rs1=st.executeQuery(q1);
  
       if(rs1.next())
       {
       ROLLNO=rs1.getInt("RNO");
       }

}
catch(Exception e1)
{
out.println("Exception yaha "+e1);
}


%>







    <main class="main" id="top">
      <nav style="background:rgba(0,0,0,0.8);font-size:20px " class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
          <div class="container"><a class="navbar-brand d-flex align-items-center fw-semi-bold fs-3" href="index.html"> <img class="me-3" src="" alt="" />Pariksha</a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul  class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2" data-anchor="data-anchor">
                  <!--<a class="nav-link fw-medium active" aria-current="page" href="index.html">Home</a>-->
              </li>
              <!--<li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Exam.jsp">Exam Test </a></li>-->
              <!--<li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Practicetest.jsp">Practice </a></li>-->
              <!--<li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="StudentResult.jsp">Result</a></li>-->
              <!--<li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="StudentProfile.jsp">Profile </a></li>-->
            </ul>
            <form  class="ps-lg-5" action="StudentLogout.jsp">
              <button class="btn btn-outline-info order-0" style="color: white" type="submit">Back to Menu</button>
            </form>
          </div>
        </div>
      </nav>
    
        
        <section class="py-0" id="home">

        <div class="container">


<!-- END of breadCrumbs section -->
<!--
--><section>
  <div class="container">
     <div class="row">
         <div class="col-12 ">
                
             <div class="container-fluid">
                <div class="row-12">
                  <div class="card " style="height:500px">
                      <form class="form-horizontal" action="" method="POST">
                          
                          <div class="form-group row" style="background: rgba(0,0,0,0.8)">
                            <label for="fname" class="col-6 text-right control-label col-form-label"><h3 style="color:white ">Your Result</h3></label>
                                 
                          </div>
                            <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Student RollNo </label>
                                 <div class=" col-4">
                                     <input   type="input" name="ID" class="form-control" id="lname" value="<%=ROLLNO%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Student Name</label>
                                 <div class=" col-4">
                                     <input   type="input" name="NAME" class="form-control" id="lname" value="<%=name%>">
                                 </div>
                          </div>  
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Correct Answer</label>
                                 <div class=" col-4">
                                     <input   type="input" name="EMAIL" class="form-control" id="lname" value="<%=C%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Wrong Answers</label>
                                 <div class=" col-4">
                                     <input   type="input" name="DOB" class="form-control" id="lname" value="<%=W%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Total Questions</label>
                                 <div class=" col-4">
                                     <input   type="input" name="CONTACT" class="form-control" id="lname" value="<%=T%>">
                                 </div>
                          </div>
                          
                          
    
    </body>
</html>
<%! int i=0;%>
<%
    
if(i==0 && name!=null && ROLLNO>0 && T>=0)
{    
    i++;
try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
       String id="root";
       String passs="root";
       Connection con=DriverManager.getConnection(url,id,passs);
       Statement st=con.createStatement();
       String q1="insert into Result values('"+ROLLNO+"','"+name+"','"+subject+"','"+new java.util.Date()+"','"+C+"','"+W+"','"+C+"','"+T+"')";
       st.executeUpdate(q1);
       

}
catch(Exception e1)
{
out.println("Exception yaha "+e1);
}
}
%>