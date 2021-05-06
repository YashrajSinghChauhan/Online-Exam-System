<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ADashboardmenu.jsp" %>%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha Student Page</title>
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
                                <h5 class="card-title">Student Datatable</h5>
                                <div class="table-responsive">
                                    <form action="" method="">
                                    <table id="zero_config" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sno.</th>
                                                <th>Roll no.</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Date of Birth</th>
                                                <th>Contact</th>
                                                <th>Password</th>
                                                <th>Remove</th>
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
               ResultSet rs=st.executeQuery("select * from UserRegister");

	       
              %>
      
            <%
            x=0;
            while(rs.next())
            {
            x++;
            %>                            
                                        
                                        
                                        <tbody>
                                            <tr>
                                                <td><%=x%></td>
                                                <td><%=rs.getString(1)%></td>
                                                <td><%=rs.getString(2)%></td>
                                                <td><%=rs.getString(3)%></td>
                                                <td><%=rs.getString(4)%></td>
                                                <td><%=rs.getString(5)%></td>
                                                <td><%=rs.getString(6)%></td>
                                                <td><input type="submit" class="btn btn-danger" name="Delete" value="<%=rs.getString(1)%>" ></td>
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
                                </from>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer text-center">
                All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
            </footer>
        </div>
    </div>
   
    
    </body>
</html>
<%
String VB=request.getParameter("Delete");
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
    String q1="Delete from userregister where RNO='"+VB+"'";
    st.executeUpdate(q1); 
    con.close();


//    response.sendRedirect("Student.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}

}

%>