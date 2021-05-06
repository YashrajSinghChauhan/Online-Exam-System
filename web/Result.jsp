<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>
<%@include file="StudentMenu.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%

      response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("Pragma","no-cache");
      response.setHeader("Expires","0");
      if(session.getAttribute("USERname")==null)
      response.sendRedirect("Ulogin.jsp");
%>
<main class="main" id="top">
  <section class="py-0" id="home">

        <div class="container">

<section>
  <div class="container">
     <div class="row">
         <div class="col-12 ">
                
             <div class="container-fluid">
                <div class="row-12">
                  <div class="card " style="height:800px">
                      <form class="form-horizontal" action="" method="POST">
                          
                          <div class="form-group row" style="background: rgba(0,0,0,0.8)">
                            <label for="fname" class="col-6 text-right control-label col-form-label"><h3 style="color:white ">Result Page</h3></label>
                                 
                          </div>
                          <div class="table-responsive">
                                    <form action="" method="">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>RollNo</th>
                                                <th>Name</th>
                                                <th>Subject</th>
                                                <th>Date of Exam</th>
                                                <th>Correct</th>
                                                <th>Wrong </th>
                                                <th>Marks Obtained</th>
                                                <th>Total Marks</th>
                                             
                                            </tr>
                                        </thead>
<%!
int ROLLNO=0;
%>
                                        <% 
  
String name=(String)session.getAttribute("USERname");
String pas=(String)session.getAttribute("USERpass");
%>

<%

try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
       String id="root";
       String passs="root";
       Connection con=DriverManager.getConnection(url,id,passs);
       Statement st=con.createStatement();
       String q1="select * from userregister where NAME='"+name+"' && PASSWORD='"+pas+"'";
       ResultSet rs1=st.executeQuery(q1);
  
       if(rs1.next())
       {
       ROLLNO=rs1.getInt("RNO");
       }

}
catch(Exception e1)
{
out.println("Exception yaha "+e1);
}


%>



<%
if(session!=null)
{
try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();
       String q1="select * from Result where RNO='"+ROLLNO+"' && NAME='"+name+"'";
       ResultSet rs1=st.executeQuery(q1);
  
       while(rs1.next())
       {
   %>                         
                                      <tbody>
                                            <tr class="text-center ">
                                                <td><%=rs1.getString(1)%></td>
                                                <td><%=rs1.getString(2)%></td>
                                                <td><%=rs1.getString(3)%></td>
                                                <td><%=rs1.getString(4)%></td>
                                                <td><%=rs1.getString(5)%></td>
                                                <td><%=rs1.getString(6)%></td>
                                                <td><%=rs1.getString(7)%></td>
                                                <td><%=rs1.getString(8)%></td>
                                            </tr>
                                       
                                         
                        
   
   
<%
    }


}
catch(Exception e1)
{
    
out.println("Exception yaha se aaa raha h wawa line n0 380"+e1);
}
}
%>
            
                                </tbody>
                                    </table>
        

          </form>
            
         </div>
     </div>
  </div>
</section>

 </section>
    </main>
    <script src="Bootstrap/js/jquery-3.5.1.slim.min.js" ></script>
    <script src="Bootstrap/js/popper.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>




