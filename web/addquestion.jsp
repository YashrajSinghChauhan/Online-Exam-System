<%-- 
    Document   : addquestion
    Created on : 28 Apr, 2021, 12:39:27 PM
    Author     : HP
--%>
<%@include file="ADashboardmenu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha-AddQuestion Page</title>
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
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Add New Question</h4>
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
            <div class="container-fluid">
                  <div class="row">
                    <div class="col">
                        <div class="card">
                            <form class="form-horizontal" action="">
                                <div class="card-body">
                                    <div class="form-group row">
                                        <label for="fname" class="col-3 text-right control-label col-form-label">Enter Subject</label>
                                        <div class="col-6">
                                         
                                            
                                            <select style="border:2px solid black" id="fname" class="form-control" name="sub"> 
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
              <%! int x=0;%>
              <%
                  while(rs.next())
	      { x++;
              %>      
                <!--<input type="text" class="form-control" id="fname" placeholder="First Name Here">-->
                              <option value="<%=rs.getString(x)%>"><%=rs.getString(x)%></option>
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
                                           
                                           </select> 
                                        </div>
                                       <div class="col-3">
                                            <button type="submit" class="btn btn-primary" name="select">Submit</button>
                                        </div> 
                                    </div>
<%! int count;
String subject;
%>
  
<%
String select=request.getParameter("select");
if(select!=null)
{
subject=request.getParameter("sub");
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
}catch(Exception e)
{
    
out.println(e);
}

%>          
            <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Subject</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="sub1" class="form-control" id="lname" value="<%=subject%>">
                    </div>
            </div>
            <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Total Questions</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black" disabled type="text" name="tq" class="form-control" id="lname" value="<%=count%>">
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Question No</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="QNO" class="form-control" id="lname">
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-3  control-label col-form-label">Enter Question</label>
                    <div class="col-1 col-lg-9">
                        <textarea style="border:2px solid black" type="input" rows="3" cols="170"  name="QUES" class="form-control" id="lname"></textarea>
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option A</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"   type="text" name="OP1" class="form-control" id="lname">
                    </div>
            </div>
            <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option B</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP2" class="form-control" id="lname">
                    </div>
            </div>         
             <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option C</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP3" class="form-control" id="lname">
                    </div>
            </div>        
             <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option D</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP4" class="form-control" id="lname">
                    </div>
            </div>
             <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Correct Option</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="C" class="form-control" id="lname">
                    </div>
            </div>
            <div class="form-group row">
                    <div class="col-3">
                        <input   type="submit" name="ins" class="btn btn-primary" id="lname" value="Insert">
                    </div>
            </div>
<%}%>

                                   


                                </div>
                            </form>
                        </div> 
                                    
                     </div>
                  </div>


<%
 String b=request.getParameter("ins");
 if(b!=null)
 {
 String subject1=request.getParameter("sub1");    
 String s1=request.getParameter("QNO");
 String s2=request.getParameter("QUES");
 String s3=request.getParameter("OP1");
 String s4=request.getParameter("OP2");
 String s5=request.getParameter("OP3");
 String s6=request.getParameter("OP4"); 
 String s7=request.getParameter("C");

 try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
    String id="root";
    String pass="root";
    Connection con=DriverManager.getConnection(url,id,pass);
    Statement st=con.createStatement();
    String q="insert into "+subject1+" values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')";
    st.executeUpdate(q);
    con.close();
    response.sendRedirect("addquestion.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}
}

%>


            
            
            
            
            
            
            
            </div>
      </div>      
        
    </body>
</html>
