
<%@include file="StudentMenu.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha | Student Profile</title>
         
    
    </head>
    <body >
      <%
      
      response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("Pragma","no-cache");
      response.setHeader("Expires","0");
      if(session.getAttribute("USERname")==null)
      response.sendRedirect("Ulogin.jsp");

      %>
      
      
         <!--    Main Content-->
    <main class="main" id="top">
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
                  <div class="card " style="height:800px">
                      <form class="form-horizontal" action="" method="POST">
                          
                          <div class="form-group row" style="background: rgba(0,0,0,0.8)">
                            <label for="fname" class="col-6 text-right control-label col-form-label"><h3 style="color:white ">Student Profile</h3></label>
                                 
                          </div>
<% 
  
String iid=(String)session.getAttribute("USERname");
String pas=(String)session.getAttribute("USERpass");
System.out.println("USERname on P Page --->"+iid);
System.out.println("USERpas on P Page --->"+pas);
if(session!=null)
{
try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();
       String q1="select * from userregister where NAME='"+iid+"'";
       ResultSet rs1=st.executeQuery(q1);
  
       if(rs1.next())
       {
   %>                         
                            <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Student ID </label>
                                 <div class=" col-4">
                                     <input   type="input" name="ID" class="form-control" id="lname" value="<%=rs1.getString(1)%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Username</label>
                                 <div class=" col-4">
                                 <input   type="input" name="NAME" class="form-control" id="lname" value="<%=rs1.getString(2)%>">
                                 </div>
                          </div>  
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Email</label>
                                 <div class=" col-4">
                                 <input   type="input" name="EMAIL" class="form-control" id="lname" value="<%=rs1.getString(3)%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Date of Birth</label>
                                 <div class=" col-4">
                                 <input   type="input" name="DOB" class="form-control" id="lname" value="<%=rs1.getString(4)%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Contact</label>
                                 <div class=" col-4">
                                 <input   type="input" name="CONTACT" class="form-control" id="lname" value="<%=rs1.getString(5)%>">
                                 </div>
                          </div>
                          <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Password</label>
                                 <div class=" col-4">
                                 <input disabled  type="input" name="PASSWORD" class="form-control" id="lname" value="<%=rs1.getString(6)%>">
                                 </div>
                          </div>
                          
                                 
                          <div class="form-group">
                              <div class="col-sm-4">
                                  <button style="width:100px" type="submit" class="btn btn-primary" name="edit">Edit</button>
                              </div> 
                          </div>  
                          <div class="form-group">
                              <div class="col-sm-4">
                                  <button  type="submit" class="btn btn-success" name="changepassword" value="change">Change Password</button>
                              </div> 
                          </div>  
<%
    }

%>
<%

}
catch(Exception e1)
{
    
out.println("Exception yaha se aaa raha h wawa line n0 380"+e1);
}%>
            


<%
String change=request.getParameter("changepassword");
System.out.println(" Changepassword button = "+change);
if(change!=null)
{
%>
       <div class="form-group row">
           <label for="fname" class="col-4 text-right control-label col-form-label">Enter New Password</label>
            <div class=" col-4">
              <input style="border:2px solid black"  type="input" name="newpassword" class="form-control" id="lname" value="">
            </div>
       </div>
       <div class="form-group row">
           <label for="fname" class="col-4 text-right control-label col-form-label">Confirm Password</label>
            <div class=" col-4">
              <input style="border:2px solid black"  type="input" name="conformpassword" class="form-control" id="lname" value="">
            </div>
       </div>
           <div class="form-group">
            <div class="col-sm-4">
              <button  type="submit" class="btn btn-success" name="Done" value="Done">Done</button>
            </div> 
           </div>                     
<%
}
%>
          </form>
            
         </div>
     </div>
  </div>
</section>




<!-- START of form Section -->
<!--
<section class="form-section">
  <div class="container">
     <div class="row">
         <div class="col-md-6 text-center">
           <h1>Hello 222</h1>
         </div>   
     </div>
  </div>
</section>-->



            
            
             
      </section>
    </main>
  
    
    <script src="Bootstrap/js/jquery-3.5.1.slim.min.js" ></script>
    <script src="Bootstrap/js/popper.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

        
    </body>
</html>

<%
String edit=request.getParameter("edit");
System.out.println(" Edit button + "+edit+"---");
if(edit!=null)
       {
           
        String s1=request.getParameter("ID");
        String s2=request.getParameter("NAME");
        String s3=request.getParameter("EMAIL");
        String s4=request.getParameter("DOB");
        String s5=request.getParameter("CONTACT");
 try{
     Class.forName("com.mysql.cj.jdbc.Driver");
     String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
     String uname2="root";	
     String pass="root";
     Connection con=DriverManager.getConnection(url,uname2,pass);	
     Statement st=con.createStatement();
     String q="update userregister set NAME='"+s2+"',EMAIL='"+s3+"',DOB='"+s4+"',CONTACT='"+s5+"' where RNO='"+s1+"'";
     st.executeUpdate(q);
     response.sendRedirect("StudentProfile.jsp");
     con.close();
 }
 catch(Exception e1)
 {
     out.println(e1);
 }   
           
       }
%>

<%
String done=request.getParameter("Done");
//<!--System.out.println(" Edit button + "+edit+"---");-->
if(done!=null)
       {
        String s0=request.getParameter("ID");
           
        String s1=request.getParameter("newpassword");
        String s2=request.getParameter("conformpassword");
        if(s1.equals(s2))
        {
 try{
     Class.forName("com.mysql.cj.jdbc.Driver");
     String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
     String uname1="root";	
     String pass="root";
     Connection con=DriverManager.getConnection(url,uname1,pass);	
     Statement st=con.createStatement();
     String q="update userregister set PASSWORD='"+s1+"' where RNO='"+s0+"' ";
     st.executeUpdate(q);
     response.sendRedirect("StudentProfile.jsp");
     con.close();
 }
 catch(Exception e1)
 {
     out.println(e1);
 }   
           
       }
}
}
else
{
  %>
  <center><h1>You have been Logged Out, Please Login First</h1>
<%
}
%>
