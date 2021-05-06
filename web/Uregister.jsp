<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="common.jsp"%>--%>
<%@page import="java.sql.*"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha |Registration Page</title>
          <!-- Font special for pages-->
        <!--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">-->
        <link href="Style.css" rel="stylesheet" media="all">
    <script type="text/javascript">
     function validate()
     {
       name=document.getElementById('un').value.trim;
       em=document.getElementById('em').value.trim;
       if(name=="" || em=="")
       {
        promt("Enter name "):
                 return false;
       }
       else
       {
           return true;
       }
       
     }
    
    
    </script>
    
    </head>
    <body>
        
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <a class="btn btn--blue" href="index.html"> < back</a>
        
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Student Sign Up </h2>
                </div>
                <div class="card-body">
                    <form  method="Post" action="" onsubmit="" >
                        <div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="username" placeholder="Username" id="un">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email" placeholder="abc@gmail.com" id="em">
                                </div>
                            </div>
                        </div>
                               <div class="form-row">
                            <div class="name">DOB</div>
                            <div class="value">
                                <div class="input-group">
                                    <input  class="input--style-5" type="date" name="date" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Contact</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="contact" placeholder="contact no." minlength="10" >
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="password" placeholder="*****" id="password">
                                </div>
                            </div>
                        </div>
                 
                        
                        <div>
                            <button class="btn btn--radius-2 btn--blue" type="submit" name="register" onclick="demo())" >Sign Up</button>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <button  class="btn btn--radius-2 btn--blue" type="submit" name="login">Sign in </button>
                       
                        
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>

<%
 String b=request.getParameter("register");
 String b1=request.getParameter("login");
 
 if(b1!=null)
 {
   response.sendRedirect("Ulogin.jsp");
 }
 if(b!=null)
 {
 String s1=request.getParameter("username");
 String s2=request.getParameter("email");
 String date=request.getParameter("date");
 String s4=request.getParameter("contact");
 String s5=request.getParameter("password");
if(s1.trim()!=null && s2.trim()!=null && date!=null && s4.trim()!=null && s5.trim()!=null)
{
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
    String user="root";
    String pass="root";
    Connection con=DriverManager.getConnection(url,user,pass);
    Statement st=con.createStatement();
 
    String q="insert into UserVarify values('"+s1+"','"+s2+"','"+date+"','"+s4+"','"+s5+"')";
    st.executeUpdate(q);
    con.close();
//    response.sendRedirect("Ulogin.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}
}
//else
//{
%>
    <!--<h1>Incorrect PAssword</h1>-->
<%
//}
 } 
%>