<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ADashboardmenu.jsp" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha|PracticePage</title>
    </head>
    <body>
        <%
      response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("Pragma","no-cache");
      response.setHeader("Expires","0");
      if(session.getAttribute("Adminname")==null)
      response.sendRedirect("Adminlogin.jsp");
    
        %>
        <div class="page-wrapper">
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Dashboard</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#"></a></li>
                                    <li class="breadcrumb-item active" aria-current="page"></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
    
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
                 <div class="row">
               <%! int x=0; %>
               
                    <!-- Column -->
                    <%
                    while(rs.next())
                    {
                    x++;    
                    %>
             
                    <div class="col-md-6 col-lg-3">
                        <div class="card card-hover">
                            <div class="box bg-danger text-center">
                                <h1 class="font-light text-white"><i class="mdi mdi-border-outside"></i></h1>
                                <h6  style="font-size: 30px;"   class="text-white"><%=rs.getString(x)%></h6>
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
<form>            
<input type="submit" class="btn btn-info" name="addsubject" value="Add Practice Test">
</from>
<br>
<br>




    
<%
String btn=request.getParameter("addsubject");
if(btn!=null)
{
%>
  
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body wizard-content">
                        <h4 class="card-title"></h4>
                        <h6 class="card-subtitle"></h6>
                        <form id="example-form" action="#" class="m-t-40">
                            <div>
                                <section>
                                    <label for="userName">Enter Subject *</label>
                                    <input id="userName" name="subject" type="text" class="required form-control" ><br>
                                    <input type="submit"  class="btn btn-success"  name="addsubjectbtn" value="Add">
                                </section>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
<!--    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
     Bootstrap tether Core JavaScript 
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
     slimscrollbar scrollbar JavaScript 
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    Wave Effects 
    <script src="dist/js/waves.js"></script>
    Menu sidebar 
    <script src="dist/js/sidebarmenu.js"></script>
    Custom JavaScript 
    <script src="dist/js/custom.min.js"></script>
     this page js 
    <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>
    <script src="assets/libs/jquery-validation/dist/jquery.validate.min.js"></script>
    -->



<!--<end>-->
      </div>
   </div>
  </div>
</div>
 
<%
}
%>
   </body>
</html>



<%
String b=request.getParameter("addsubjectbtn");
if(b!=null)
{
   String subject=request.getParameter("subject");
    
   try
   {
     Class.forName("com.mysql.cj.jdbc.Driver");
     String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
     String id="root";
     String pass="root";
     Connection con=DriverManager.getConnection(url,id,pass);
     Statement st=con.createStatement();     
     String q="create table "+subject+"(Q varchar(30) primary key,QUES varchar(400),OP1 varchar(150),OP2 varchar(150),OP3 varchar(150),OP4 varchar(150),CORRECT varchar(150))";
     
     st.executeUpdate(q);
     con.close();
   }
   catch(Exception e)
   {
   out.println(subject+" is already exist.");
   }
}

%>