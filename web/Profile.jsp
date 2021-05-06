<%-- 
    Document   : Profile
    Created on : 29 Apr, 2021, 10:28:26 AM
    Author     : HP
--%>
<%@include file="ADashboardmenu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha | Profile Admin</title>
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
                        <h4 class="page-title">Admin Profile</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="AdminDashboard.jsp">back</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row-12">
                  <div class="card " style="height:500px">
                      <form class="form-horizontal" action="" method="POST">
                          
                          <div class="form-group row" style="background: rgba(0,0,0,0.8)">
                            <label for="fname" class="col-6 text-right control-label col-form-label"><h3 style="color:white ">Admin Profile</h3></label>
                                 
                          </div>
<%                        
String iid=session.getAttribute("Adminname").toString();
try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();
       String q1="select * from admin where ID='"+iid+"'";
       ResultSet rs1=st.executeQuery(q1);
  
       if(rs1.next())
       {
   %>                         
                            <div class="form-group row">
                            <label for="fname" class="col-4 text-right control-label col-form-label">Admin ID</label>
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
                            <label for="fname" class="col-4 text-right control-label col-form-label">Password</label>
                                 <div class=" col-4">
                                 <input disabled  type="input" name="PASS" class="form-control" id="lname" value="<%=rs1.getString(3)%>">
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
        </div>
       </div>     
    </body>
</html>


<%
String edit=request.getParameter("edit");
System.out.println(" Edit button + "+edit+"---");
if(edit!=null)
       {
           
        String s1=request.getParameter("ID");
        String s2=request.getParameter("NAME");
 try{
     Class.forName("com.mysql.cj.jdbc.Driver");
     String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
     String name="root";	
     String pass="root";
     Connection con=DriverManager.getConnection(url,name,pass);	
     Statement st=con.createStatement();
     String q="update admin set ID='"+s1+"',NAME='"+s2+"' where ID='"+s1+"'";
     st.executeUpdate(q);
     response.sendRedirect("Profile.jsp");
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
     String name="root";	
     String pass="root";
     Connection con=DriverManager.getConnection(url,name,pass);	
     Statement st=con.createStatement();
     String q="update admin set PASS='"+s1+"' where ID='"+s0+"' ";
     st.executeUpdate(q);
     response.sendRedirect("Profile.jsp");
     con.close();
 }
 catch(Exception e1)
 {
     out.println(e1);
 }   
           
       }
}

%>
