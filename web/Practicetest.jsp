<%@page import="java.sql.*"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="icon.png">
    <title>Pariksha - Exam Portal Admin DashBoard</title>
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
  </head>
  <body style="background-color: ">
    <!--    Main Content-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-flex align-items-center fw-semi-bold fs-3" href="index.html"> <img class="me-3" src="assets/img/gallery/logo2.png" alt="" /></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="">
            <ul class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2" data-anchor="data-anchor">
                  <a class="nav-link fw-medium active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="" data-anchor=""><a class="nav-link" href="abiut.jsp">About</a></li>
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
                                <h5 class="card-title">Select Your Practice Subject</h5>
                                <div class="row">
               <%
            try
              {
               Class.forName("com.mysql.cj.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
               String id="root";
               String pass="root";
               Connection con=DriverManager.getConnection(url,id,pass);
               Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("show tables");

	       
              %>
                 <%! int x=0;
                 int y=0;
                 String box[]={"box bg-info text-center","box bg-danger text-center","box bg-warning text-center","box bg-cyan text-center","box bg-success text-center","box bg-info text-center","box bg-danger text-center","box bg-warning text-center","box bg-cyan text-center","box bg-success text-center","box bg-info text-center","box bg-danger text-center","box bg-warning text-center"};
                 
                 %>
               
                    <!-- Column -->
                    <%
                        x=0;
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
                                                <h6 class="text-white"><a style="color:white;font-size:30px" href="Quiz.jsp?subject=<%=rs.getString(x)%>&&name=0"  value="<%=rs.getString(x)%>"><%=rs.getString(x)%></a></h6>
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



        
       
   
        
    </main>
  </body>
</html>