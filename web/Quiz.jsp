<%-- 
    Document   : Quiz
    Created on : 30 Apr, 2021, 3:23:51 PM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="icon.png">
    <title>Pariksha - Practice Test</title>
    <!-- Custom CSS -->
    <link href="assets/libs/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet" />
    <link href="assets/extra-libs/calendar/calendar.css" rel="stylesheet" />
    <link href="dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <style>
    body {
    background-color: ghostwhite;
}

label.radio {
    cursor: pointer
}

label.radio input {
    position: absolute;
    top: 0;
    left: 0;
    visibility: hidden;
    pointer-events: none
}

label.radio span {
    padding: 4px 0px;
    border: 1px solid red;
    display: inline-block;
    color: red;
    width: 250px;
    text-align: center;
    border-radius: 3px;
    margin-right: 500px;
    margin-top: 7px;
   
    text-transform: uppercase
}

label.radio input:checked+span {
    border-color: red;
    background-color: red;
    color: #fff
}

.ans {
    margin-left: 0px !important
}

.btn:focus {
    outline: 0 !important;
    box-shadow: none !important
}

.btn:active {
    outline: 0 !important;
    box-shadow: none !important
}
    </style>
    </head>
    <body>


<%!
    int qno=1;
   int count=0;
   String option=null;
   String right=null;
   int  correct=0;
   int wrong=0;
String subject=null;
%> 

        
        
      <main class="main" id="top">
<!--      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-flex align-items-center fw-semi-bold fs-3" href="index.html"> <img class="me-3" src="assets/img/gallery/logo2.png" alt="" /></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="">
            <ul class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2" data-anchor="data-anchor">
                  <a class="nav-link fw-medium active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="" data-anchor=""><a class="nav-link" href="About">About</a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="Practicetest.jsp">Practice </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="#contact">Contact </a></li>
              <li class="nav-item px-2" data-anchor="data-anchor"><a class="nav-link" href="Uregister.jsp">Sign up </a></li>
            </ul>
            <form class="ps-lg-5" action="Ulogin.jsp">
              <button class="btn btn-outline-primary order-0" type="submit">Sign in</button>
            </form>
          </div>
        </div>
      </nav>-->


<%
 subject=request.getParameter("subject");
%>
        
<%     
try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();
       String q1= "Select * from java";
       ResultSet rs1=st.executeQuery(q1);
       count=0;
       while(rs1.next())
       {
          count++;
       }
}
catch(Exception e)
{
out.println("YASHA "+e);
}


%>        
          
          
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

        <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                            <br><br><br>
                      <h5 class="card-title"></h5>
                    <div class="row">
        <!--<h1>Hello </h1>-->
     
    <div class="container mt-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-10 col-lg-10">
      <form class="form-horizontal" action="Quiz.jsp" method="POST">
              
<%
//    String previous=request.getParameter("previous");
    String next=request.getParameter("next");
    option=request.getParameter("A");
    right=request.getParameter("Correct");
    if(next!=null && qno<count)
    {
    qno++;
    }
    if(option!=null && right!=null)
    {

        if(option.equals(right))
        {
            correct++;
        }
        else
        {
        wrong++;
        }
    }    
    if(qno>=count)
    {
        response.sendRedirect("PracticeResult.jsp?correct="+correct+"&&wrong="+wrong+"&&total="+count+"");
    }
try
      {
       
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();   
       String q="select * from "+subject+" where Q='"+qno+"'  ";
       ResultSet rs=st.executeQuery(q);
       if(rs.next())
       {
%>
             
        
        
      <div class="border">
                <div class="question bg-white p-3 border-bottom">
                    <div class="d-flex flex-row justify-content-between align-items-center mcq">
                        <h4><input hidden type="text" name="subject" value="<%=subject%>" ><%=subject%> Test</h4><span>(5 of 10)</span>
                        
                    </div>
                </div>
                <div class="question bg-white p-3 border-bottom">
                    <div class="d-flex flex-row align-items-center question-title">
                        <h3 class="text-danger">Q.<%=rs.getString(1)%></h3>
                        <h5 class="mt-1 ml-2"><%=rs.getString(2)%></h5>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="A" value="<%=rs.getString(3)%>"> <span><%=rs.getString(3)%></span>
                        </label>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="A" value="<%=rs.getString(4)%>"> <span><%=rs.getString(4)%></span>
                        </label>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="A" value="<%=rs.getString(5)%>"> <span><%=rs.getString(5)%></span>
                        </label>
                    </div>
                    <div class="ans ">
                        <label class="radio"> <input type="radio" name="A" value="<%=rs.getString(6)%>"> <span><%=rs.getString(6)%></span>
                        </label>
                    </div>
                      
                     <div class="ans ">
                        <label hidden class="radio"> <input  type="text" name="Correct" value="<%=rs.getString(7)%>"> <span><%=rs.getString(7)%></span>
                        </label>
                    </div>     
                </div>
                <div class="d-flex flex-row justify-content-between align-items-center p-3 bg-white">
                    <!--<button class="btn btn-primary d-flex align-items-center btn-danger" type="submit" name="previous"><i class="fa fa-angle-left mt-1 mr-1"></i>&nbsp;previous</button>-->
                    <button class="btn btn-primary border-success align-items-center btn-success" type="submit" name="next">Next<i class="fa fa-angle-right ml-2"></i></button>
                    <button class="btn btn-primary border-success align-items-center btn-primary" type="submit" name="submit">Submit</button></div>
            </div>
        </div>
    </div>
</div>
</form>              
                           
<%
    }
}
catch(Exception e)
{
out.println(e);
}




%>
                    
                    
                    
                    
                   </div>
                </div>
              </div>
            </div>
          </div>
        </div> 
</section>
    </main>
    </body>
</html>
<%
String submit=request.getParameter("submit");
if(submit!=null)
{
    response.sendRedirect("PracticeResult.jsp?correct="+correct +"&&wrong="+wrong+"&&total="+count+"");
}

%>