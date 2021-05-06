<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ADashboardmenu.jsp" %>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
        background:white;
        </style>
    </head>
    <body>
      
<%! int count;
String subject;
%>
  
        
        
        <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper">
        <div class="page-wrapper">
            <div class="container-fluid">
             <h1>Hello Question</h1>
          
            
            
                        <!-- Tabs -->
                        <div class="card">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">Insert</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">Delete</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#update" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">Update</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#search" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">Search</span></a> </li>
          
                            
                            
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border">
                               
                    <div class="tab-pane active" id="home" role="tabpanel">
                    <div class="p-20">
                    <div class="row">
                    <div class="col-md-6">
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
    response.sendRedirect("Question.jsp");
}
catch(Exception e)
{
    System.out.println(e);
}
}

%>


        <!--Insert TAbbed PAn-->                         
                                
        <!--Delete Tab Start-->
        
        
        
        <div class="tab-pane  p-20" id="profile" role="tabpanel">
           <div class="p-20">
                 <div class="row">
                    <div class="col-9">
                        <div class="card">
                            <form class="form-horizontal" action="">
                                <div class="card-body">
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-2 text-right control-label col-form-label">Enter Subject</label>
                                        <div class="col-sm-6">
                                         
                                            
                                            <select style="border:2px solid black" id="fname" class="form-control" name="sub"> 
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
                    <div class="col-8">
                        <input style="border:2px solid black"  type="text"  class="form-control" id="lname" name="Qno">
                    </div>
            </div>
<brs>
            <div class="form-group row">
                <div class="col-4">
                    <button type="submit" class="btn btn-primary" name="view">View</button>
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
           
          
           <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Question No</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="QNO" class="form-control" id="lname" value="<%=rs1.getString(1)%>">
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label"> Question</label>
                    <div class="col-3 col-lg-9">
                        <textarea style="border:2px solid black" type="input" rows="3" cols="170"  name="QUES" class="form-control" id="lname" value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%></textarea>
                    </div>
            </div>
           <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option A</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP1" class="form-control" id="lname" value="<%=rs1.getString(3)%>">
                    </div>
            </div>
            <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option B</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP2" class="form-control" id="lname" value="<%=rs1.getString(4)%>">
                    </div>
            </div>         
             <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option C</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP3" class="form-control" id="lname" value="<%=rs1.getString(5)%>">
                    </div>
            </div>        
             <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Option D</label>
                    <div class="col-sm-6">
                        <input style="border:2px solid black"  type="text" name="OP4" class="form-control" id="lname" value="<%=rs1.getString(6)%>">
                    </div>
            </div>
             <div class="form-group row">
                <label for="lname" class="col-sm-3  control-label col-form-label">Correct Option</label>
                    <div class="col-6">
                        <input style="border:2px solid black"  type="text" name="C" class="form-control" id="lname" value="<%=rs1.getString(7)%>">
                    </div>
            </div>
            <div class="form-group row">
                    <div class="col-4">
                        <input   type="submit" name="delete" class="btn btn-primary" id="lname" value="Delete"/>
                    </div>
            </div>
<%
    }
else{
%><center><h4>No Question Found</h4>
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
<%
String b1=request.getParameter("delete");
if(b1!=null)
{ 
    String sub=request.getParameter("sub");
    String s1=request.getParameter("QNO");
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
    String name="root";	
    String pass="root";
    Connection con=DriverManager.getConnection(url,name,pass);	
    Statement st=con.createStatement();
    String q="Delete from "+sub+" where Q='"+s1+"'";
    st.executeUpdate(q);
    con.close();
    %>
    <h1><script></script></h1>
<%
//    response.sendRedirect("delete.jsp");
}
catch(Exception e1)
{
    out.println(e1);
}
}	
%>

</div>
<!--Delete Tab End-->
        
        
        
        
                                <div class="tab-pane p-20" id="update" role="tabpanel">
                                    <div class="p-20">
                                   
                                        
                                        
                                    
                                    
                                    </div>
                                </div>
                                
                                <div class="tab-pane p-20" id="search" role="tabpanel">
                                    <div class="p-20">
                                    
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
            
            </div>
        </div>
    </div>
        
        
    </body>
</html>
