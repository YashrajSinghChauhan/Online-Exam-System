<%-- 
    Document   : Instruction
    Created on : 5 May, 2021, 12:24:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha Instruction page</title>
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
    
    <script type="text/javascript">
        window.history.forward();
        function noBack(){ window.history.forward();}
    </script> 
	
    </head>
    
    <%!
    int count=0;
    %>
    <%
     response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     response.setHeader("Pragma","no-cache");
     response.setHeader("Expires","0");
     if(session.getAttribute("USERname")==null)
     response.sendRedirect("Ulogin.jsp");

        
        
    String subject=request.getParameter("subject");
       
try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();
       String q1= "select * from "+subject+"";
       ResultSet rs1=st.executeQuery(q1);
       count=0;
       while(rs1.next())
       {
          count++;
       }
//       count+1mysq
       
}catch(Exception e)
{
    
out.println(e);
}
    %>
    
    <body>
        
        <div class="conainer py-5">
          <div class="ro    w-border">
            <div class="col-md-6 offset-md-3">
                <div class="card ">
                    <div class="card-header text-center bg-primary text-white">
                        <h3>Instructions</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group align-content-center">
                        
                        </div>
                        <ul>
                        <li>Wel-Come to Pariksha Online exam for <b><%=subject%></b></li>
                        <li>Exam has total <%=count%> Questions </li>
                        <li>All Questions are Compulsary. </li>
                        <li>Negative marking :No .</li>
                        <li>Close all Other Window Tabs.</li>
                        <li>Once you Started the Exam you cant go back the browser.</li>
                        </ul>    
                        <h2>Best of Luck for Your Exam</h2>
                        
                    </div>
                    <div class="card-footer text-right bg-transparent ">
                        <form action="" method="POST">
                            <input hidden type="text" name="subject" value="<%=subject%>">
                            <input type="submit" class="btn btn-primary" name="Start" value="Start">
                        </form>
                    </div>
                </div>   
            </div>    
          </div>
        </div>    
    </body>
</html>
<%
String start=request.getParameter("Start");
String sub=request.getParameter("subject");
if(start!=null)
{
response.sendRedirect("ExamTest.jsp?subject="+sub+"");

}
%>