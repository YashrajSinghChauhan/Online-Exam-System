<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha | Admin Login</title>
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
                    <h2 class="title">Admin Login </h2>
                </div>
                <div class="card-body">
                    <form method="GET" action="">
                        <div class="form-row">
                            <div class="name">Enter ID</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="id" placeholder="Enter your Id " required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="username" placeholder="Username" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="password" placeholder="Password" required>
                                </div>
                            </div>
                        </div>
                  
                        <div>
                            <button class="btn btn--radius-2 btn--blue" type="submit" name="Loginbtn">Sign in</button>
                    
                        </div>
                         
                    </form>
                </div>
           
                 </div>
           
        </div>
        
    </div>
        
        
        
    </body>
</html>
<%
String b=request.getParameter("Loginbtn");
 if(b!=null)
 {
  String s0=request.getParameter("id");
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
    String q="select * from Admin where ID='"+s0+"' AND NAME='"+s1+"' AND PASS='"+s2+"'";
    ResultSet rs= st.executeQuery(q);
    if(rs.next())
    {
        session.setAttribute("Adminname", s0);
       response.sendRedirect("AdminDashboard.jsp?s0='"+s0+"'");
    }
    else
    {%>
    <h1>Invalid ID Password</h1>
    <%
    }
    con.close();

}
catch(Exception e)
{
    System.out.println(e);
}
 } 
%>