<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ADashboardmenu.jsp" %>%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha |Varify Page</title>
    </head>
    <body>
        <%
      response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("Pragma","no-cache");
      response.setHeader("Expires","0");
      if(session.getAttribute("Adminname")==null)
      response.sendRedirect("Adminlogin.jsp");
    
        %>
        
<%! int x=0;%>        
      <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper">
        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Student  Varification Request</h5>
                                <div class="table-responsive">
                                    <form action="" method="">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Date of Birth</th>
                                                <th>Contact</th>
                                                <th>Password</th>
                                                <th>Add</th>
                                            </tr>
                                        </thead>
   <%
            try
              {
               Class.forName("com.mysql.cj.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
               String id="root";
               String pass="root";
               Connection con=DriverManager.getConnection(url,id,pass);
               Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select * from UserVarify");

	       
              %>
      
            <%
            while(rs.next())
            {
            x++;
            %>                            
                                        
                                        
                                        <tbody>
                                            <tr>
                                                <td><input  type="text" name="name" value="<%=rs.getString(1)%>"></td>
                                                <td><input  type="text" name="email" value="<%=rs.getString(2)%>"></td>
                                                <td><input style="width: 90px"  type="text" name="dob" value="<%=rs.getString(3)%>"></td>
                                                <td><input style="width: 90px"  type="text" name="contact" value="<%=rs.getString(4)%>"></td>
                                                <td><input style="width: 90px"  type="text" name="name" value="<%=rs.getString(5)%>"></td>
                                                <td><input type="submit" class="btn btn-primary" name="varifybtn" value="<%=rs.getString(1)%>"></td>
                                            </tr>
                                       
<% 
    }
                 con.close();
               }
               catch(Exception e)
               {
                  out.print(e);
               }
%>                                 
                                            
                                        </tbody>
                                    </table>
                            </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer class="footer text-center">
                Designed and Developed by <a href="#">Yash</a>.
            </footer>
        </div>
    </div>
   
    
    </body>
</html>
<%!
String s1=null;
String s2=null;
String s3=null;
String s4=null;
String s5=null;
%>

<%
String VB=request.getParameter("varifybtn");
if(VB!=null)
{
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
    String user="root";
    String pass="root";
    Connection con=DriverManager.getConnection(url,user,pass);
    Statement st=con.createStatement();
 
    String q="Select * from uservarify where NAME='"+VB+"'";
    ResultSet rs=st.executeQuery(q);
   if(rs.next())
   {
       s1=rs.getString(1);
       s2=rs.getString(2);
       s3=rs.getString(3);
       s4=rs.getString(4);
       s5=rs.getString(5);
   }
    
    
    con.close();
//    response.sendRedirect("Ulogin.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}    
    
    
    
System.out.println("Button name is ---->"+VB);
if(s1!=null && s2!=null && s3!=null && s4!=null && s5!=null)
{
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/onlineexam?useSSL=false";
    String user="root";
    String pass="root";
    Connection con=DriverManager.getConnection(url,user,pass);
    Statement st=con.createStatement();
 
    String q="insert into userregister(NAME,EMAIL,DOB,CONTACT,PASSWORD) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
    st.executeUpdate(q);
   
     String q1="Delete from uservarify where NAME='"+VB+"'";
    st.executeUpdate(q1); 
    con.close();


    response.sendRedirect("Varify.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}
}//inner if

}//outer if
%>