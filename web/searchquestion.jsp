<%-- 
    Document   : searchquestion
    Created on : 28 Apr, 2021, 12:40:23 PM
    Author     : HP
--%>
<%@include file="ADashboardmenu.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pariksha|Question Search</title>
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
                        <h4 class="page-title">Search Question</h4>
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
                            <form class="form-horizontal" action="searchquestion.jsp" method="POST">
                                <div class="card-body">
                                    <div class="form-group row">
                                        <label for="fname" class="col-2 text-right control-label col-form-label">Enter Subject</label>
                                        <div class="col-sm-5">
                                         
                                            
                                            <select style="border:2px solid black" id="fname" class="form-control" name="sub" required> 
<%
            try
              {
               Class.forName("com.mysql.cj.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
               String id="root";
               String pass="root";
               Connection con1=DriverManager.getConnection(url,id,pass);
               Statement st=con1.createStatement();
               ResultSet rs1=st.executeQuery("show tables");

	       
              %>
              <%! int y=0;%>
              <%
                  while(rs1.next())
	      { y++;
              %>      
                <!--<input type="text" class="form-control" id="fname" placeholder="First Name Here">-->
                              <option  value="<%=rs1.getString(y)%>"><%=rs1.getString(y)%></option>
              <%
                  y--;
               }
               %>
              <% 
                 con1.close();
               }
               catch(Exception e)
               {
                  out.print(e);
               }

%>
                                           
                                           </select> 
                                        </div>
                                      
            <div class="form-group row">
                <label for="lname" class="col-4  control-label col-form-label">Enter Q no.</label>
                    <div class="col-7">
                        <input style="border:2px solid black"  type="text"  class="form-control" id="lname" name="Qno">
                    </div>
            </div>

            <div class="form-group row">
                <div class="col-5">
                    <button type="submit" class="btn btn-primary" name="view">Search</button>
                </div> 
            </div>
<%
String view=request.getParameter("view");
if(view!=null)
{
    System.out.println("Vies Buttem pr value"+view);
String sub1=request.getParameter("sub");
String Qn=request.getParameter("Qno");

try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();
       String q1="select * from "+sub1+" where Q='"+Qn+"'";
       ResultSet rs1=st.executeQuery(q1);
  
       if(rs1.next())
       {
         
%>          
           <br>
           <br>
          
           <div class="form-group row">
                <label for="lname" class="col-sm-4  control-label col-form-label">Question No</label>
                    <div class="col-6">
                        <input disabled style="border:2px solid black"  type="text" name="QNO" class="form-control" id="lname" value="<%=rs1.getString(1)%>">
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-1  control-label col-form-label"> Question</label>
                    <div class=" col-9">
                        <textarea disabled style="border:2px solid black" type="input" rows="3" cols="170"  name="QUES" class="form-control" id="lname" value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%></textarea>
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-sm-4  control-label col-form-label">Option A</label>
                    <div class="col-sm-6">
                        <input   disabled style="border:2px solid black"  type="text" name="OP1" class="form-control" id="lname" value="<%=rs1.getString(3)%>">
                    </div>
            </div>
            <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option B</label>
                    <div class="col-sm-6">
                        <input disabled style="border:2px solid black"  type="text" name="OP2" class="form-control" id="lname" value="<%=rs1.getString(4)%>">
                    </div>
            </div>         
             <div class="form-group row">
                <label for="lname" class="col-3  control-label col-form-label">Option C</label>
                    <div class="col-sm-6">
                        <input  disabled style="border:2px solid black"  type="text" name="OP3" class="form-control" id="lname" value="<%=rs1.getString(5)%>">
                    </div>
            </div>        
             <div class="form-group row">
                <label for="lname" class="col-3  control-label col-form-label">Option D</label>
                    <div class="col-sm-6">
                        <input disabled style="border:2px solid black"  type="text" name="OP4" class="form-control" id="lname" value="<%=rs1.getString(6)%>">
                    </div>
            </div>
             <div class="form-group row">
                <label for="lname" class="col-sm-4  control-label col-form-label">Correct Option</label>
                    <div class="col-6">
                        <input disabled style="border:2px solid black"  type="text" name="C" class="form-control" id="lname" value="<%=rs1.getString(7)%>">
                    </div>
            </div>
            
<%
    }
else{
%>
<center><h4>No Question Found</h4>
           <%
}
}
catch(Exception e1)
{
    
out.println("Exception yaha se aaa raha h wawa line n0 380"+e1);
}%>

</div>
                        </div> 
                            </form>            
                     </div>
                  </div>
                </div>
            </div>
        </div>
        
<%
}
%>
                
                
                
        </div>
      </div>      
        
        
    
      </div>
      </div>      
    
    
    
    </body>
</html>
