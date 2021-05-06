<%-- 
    Document   : Exam
    Created on : 1 May, 2021, 10:12:45 AM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<%--<%@include file="StudentMenu.jsp" %>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Exm Page</title>
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
      
      
      <%
        String USERname=(String)session.getAttribute("USERname");   
        String name=request.getParameter("name");
        String pass=request.getParameter("pass");
        
     HttpSession session1=request.getSession();
     session1.setAttribute("UNAME",USERname);

        %>
 <nav style="background:rgba(0,0,0,0.8);font-size:20px " class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
          <div class="container"><a class="navbar-brand d-flex align-items-center fw-semi-bold fs-3" href="index.html"> <img class="me-3" src="" alt="" />Pariksha</a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul  class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2" data-anchor="data-anchor">
                  <a class="nav-link fw-medium active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Exam.jsp">Exam Test </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Practicetest.jsp">Practice </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="Result.jsp">Result</a></li>
              <form>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" style="color: white" href="StudentProfile.jsp?name=""<%=name%>"">Profile </a></li>
              </from>
            </ul>
            <form  class="ps-lg-5" action="StudentLogout.jsp">
              <button class="btn btn-outline-info order-0" style="color: white" type="submit">Logout</button>
            </form>
          </div>
        </div>
      </nav>
    
        <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-100 py-5">
   
          
          <div class="container">
          
              <div class="row">
       
                  <div class="col-12 mx-auto align-items-center text-center">
              
                      <h6 class="mb-4 text-uppercase fw-light fs-1 mb-6"></h6>
              <div class="carousel slide" id="carouselExampleDark" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="10000">
   <h4>Your WelCome <%=USERname%></h4>
                      <div class="row">
                       
                          <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                            <br><br><br>
                            
                                <h5 class="card-title">Select Your Subject</h5>
                                <div class="row">
               <%
            try
              {
               Class.forName("com.mysql.cj.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
               String id="root";
               String passsql="root";
               Connection con=DriverManager.getConnection(url,id,passsql);
               Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("show tables");

	       
              %>
                 <%! int x=0;
                 int y=0;
                 String box[]={"box bg-info text-center","box bg-danger text-center","box bg-warning text-center","box bg-success text-center","box bg-info text-center","box bg-danger text-center","box bg-warning text-center","box bg-cyan text-center","box bg-success text-center","box bg-info text-center","box bg-danger text-center","box bg-warning text-center"};
                 
                 %>
               
                    <!-- Column -->
                    <%
                    while(rs.next())
                    {
                        y++;
                    x++;    
                    %>
                         
                                    
                                    <!-- Column -->
                                    <div class="col-md-4 ">
                                        <div class="card card-hover">
                                            <div class="<%=box[y]%>">
                                                <h1 class="font-light text-white"><i class="mdi mdi-book-open-page-variant"></i></h1>
                                                <h6 class="text-white"><a style="color:white;font-size:30px" href="Instruction.jsp?subject=<%=rs.getString(x)%>"  value="<%=rs.getString(x)%>"><%=rs.getString(x)%></a></h6>
                                            </div>
                                        </div>
                                    </div>
<%
                    x--;
                }
                %>     
               <% 
                 con.close();
               }
               catch(Exception e)
               {
                  out.print(e);
               }
%>                                
                </div>
                
                </div>
              </div>
            </div>
          </div>
        </div> 
</section>
      <!-- <section> close ============================-->
      <!-- ============================================-->
   </body>
</html>
