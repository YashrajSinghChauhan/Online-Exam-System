<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="common.jsp"%>--%>
<%@page import="java.sql.*"%>
<%@page errorPage="error_exception.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha | Login Page</title>
          <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="Style.css" rel="stylesheet" media="all">
    
      
    </head>
    <body>
        
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <a class="btn btn--blue" href="index.html"> < back</a>
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Student Login </h2>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="username" placeholder="Username">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="password" placeholder="Password" >
                                </div>
                            </div>
                        </div>
                  
                        <div>
                            <button class="btn btn--radius-2 btn--blue" type="submit" name="Login">Sign in</button>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <button class="btn btn--radius-2 btn--blue" type="submit" name="Register">Sign Up</button>
                       
                        
                        </div>
                    </form>
                </div>
           
                 </div>
            <a class="btn btn--radius-2 btn--blue" href="Adminlogin.jsp">Login as Admin!!!</a>
           
        </div>
        
    </div>
        
        
        
    </body>
</html>
<%
String b=request.getParameter("Login");
String r=request.getParameter("Register");

if(r!=null)
 {
     response.sendRedirect("Uregister.jsp");
 }
if(b!=null)
 {
 String s1=request.getParameter("username");
 String s2=request.getParameter("password");
 

try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
    String user="root";
    String pass="root";
    Connection con=DriverManager.getConnection(url,user,pass);
    Statement st=con.createStatement();
    String q="select * from userregister where NAME='"+s1+"' AND PASSWORD='"+s2+"' ";
    ResultSet rs= st.executeQuery(q);
    if(rs.next())
    {
     session.setAttribute("USERname",s1);
     session.setAttribute("USERpass",s2);
     response.sendRedirect("Exam.jsp");
    } 
    else{
    out.println("Invalid Username Password");
   %><h1>Invalid Username Password</h1><%
    }
    con.close();
//    response.sendRedirect("Exam.jsp?name="+s1+"");
 }
 catch(Exception e)
 {
    out.println(e);
}
 } 
%>