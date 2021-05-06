<%-- 
    Document   : QuesPage
    Created on : 11 Dec, 2020, 1:35:22 PM
    Author     : HP
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.*"  %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_exception.jsp" %>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ques page</title>
        <link href="mystyle.css" rel="stylesheet">
    </head>
    

<%!    
       String a=null;
       int x=1;
       static String s;
       String subject;
       int count=0; 
       int sahi;
       int galat;
       int total;
       int notattempt;
       ArrayList ar;
        String ans[]; 
%>     
<%
    s=request.getParameter("name");

    if(s!=null)
    {
      
        
    subject=request.getParameter("subject");
    }
    String previous=request.getParameter("previous");
    String next=request.getParameter("next");
    String ibutton=request.getParameter("i");
  
%>
  <!--Start Next Previous Button ka Code-->
<br>
<%     
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
   


    
    if(s!=null || next!=null || previous!=null || ibutton!=null)
    {    

        if(next != null && x<count)
        {
           
            x++;
      
        }
        
        if(previous!=null && x>1)
        {
            
        x--;
        }
        if(ibutton!=null)
        {
            x=Integer.parseInt(ibutton);
            out.print("i = "+ibutton);
               out.print("ix = "+x);
            x--;     
            
        }
        
       try{
                  a=request.getParameter("A");
       }
       catch(Exception e)
       {
        out.println(e);
       }
        

       String Correct=request.getParameter("Correct");
       if(previous!=null && s==null && a==null)
       {
//           ans[x]="NAHI";    
       }
       if(next!=null  && s==null )
       {  
          if(a!=null && s==null)
          {    
             if(a.equals(Correct) && a!=null)
            {
             sahi++;
           ans[x]="true";
           //    for(int i=0;i<count;i++)
//    {
      out.print(ans[x]);
//    }  
            }
            else
            {
            galat++;   
          ans[x]="false";
          out.print(ans[x]);
            }
              if(next!=null && x==count)
             {  
            response.sendRedirect("Result.jsp?correct="+sahi+"&&Wrong="+galat+"&&count="+count+"&&notattempt="+notattempt+"");
//           x--;
             }         
         }
        else
        {
        notattempt++;
//      ans[x]="null";
//        out.print(ans[x]);
        }
       }
%>
<%
    out.println(" x="+x);
    out.println(" name x="+s);
    out.println(" subject x="+subject);
    out.println("Count = "+count);
    out.println();
    out.println("Sahi  = "+sahi);
    out.println("galat = "+galat);
    out.println("notattempt = "+notattempt);
    out.println("total = "+total);

%>
<%
    //ArrayList ka code
    if(s!=null)
    {
        ar=new ArrayList();
        ans=new String[count];
        
      try
      {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
	  String name="root";
	  String pass="root";
	  Connection con=DriverManager.getConnection(url,name,pass);
	  Statement st=con.createStatement();
	  String q="Select * from java";
	  ResultSet rs=st.executeQuery(q);
	  for(int i=0;rs.next();i++)
	  {
		  ar.add(Integer.parseInt(rs.getString(1)));
		 
	  }
//	 out.print("Unshuffeled Array = ");   
//          for(int i=0;i<ar.size();i++)
//	  {
//		  out.print(ar.get(i)+"\t");
//	  }
	  Collections.shuffle(ar);
//       out.println();
//       out.print("Shuffeled Array = ");
//	  for(int i=0;i<ar.size();i++)
//	  {
//		  out.print(ar.get(i)+"\t");
//		  
//	  }
	 
          
          con.close();
	}
        catch(Exception e)
        {
	  System.out.println(e);
        }
    }
    
     try
      {
       
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/Subject?useSSL=false";
       String id="root";
       String pass="root";
       Connection con=DriverManager.getConnection(url,id,pass);
       Statement st=con.createStatement();   
       String q="select * from "+subject+" where Q='"+ar.get(x)+"'  ";
       ResultSet rs=st.executeQuery(q);
       if(rs.next())
       {
%>
      <div>
         <!--<center>-->
         <form action="QuesPage.jsp">
             <table id="mytable2">
                 
         <div id="">
         <tr>
         <td>Subject</td> 
         <td><input type="text" name="subject" value="<%=subject%>"></td>
             <!--<br>-->
         </tr>
         <tr>
             
         <td>Q No.</td>
         <!--<td><label name="Qnumber"><%=rs.getString(1)%></label></td>-->
         <td><label name="Qnumber"><%=(x)%></label></td>
         </tr>
         <!--<br>-->
         <tr>
         <td>Question</td>
         <td><label id="txa" rows="5" cols="50"><%=rs.getString(2)%></td>
         </label></td>
         </tr>
         <tr>
         <td>A.</td>
         <td><input type="radio" name="A" value="<%=rs.getString(3)%>" ><%=rs.getString(3)%></td>
         <!--<br>-->
         </tr>
         <tr>
         <td>B.</td>
         <td><input type="radio" name="A" value="<%=rs.getString(4)%>" ><%=rs.getString(4)%></td>
         <!--<br>-->
         </tr>
         <tr>
         <td>C.</td>
         <td><input type="radio" name="A" value="<%=rs.getString(5)%>" ><%=rs.getString(5)%></td>
         </tr>
         <tr>  
         <td>D.</td>
         <td> <input type="radio" name="A" value="<%=rs.getString(6)%>" ><%=rs.getString(6)%>
         </td>
         </tr>
         <br>
             <input type="hidden"  name="Correct" value="<%=rs.getString(7)%>" >
         <tr>
         
            <td> <input id="btn1" type="submit" value="Previous" name="previous"></td>
            <td><input id="btn1" type="submit" value="Next" name="next"></td>
            <td><input id="btn1" type="submit" value="Submit" name="submit"></td>
         </tr>        
         </div>
         <tr>
         <div id="Questions">
         <%
             for(int i=1;i<=count;i++)
             {
            %>
          <input id="btnn" type="submit" value="<%=i%>" name="i">
         
            <%
             }
         
         %>
         </tr>
         </div>    
            
         
    </table>
    </form>
   </div>

<%
    }
    }
    catch(Exception e)
    {
      out.println(e);
      
    }
   }
%>
<%! int Correct=0;
    int Incorrect =0;
%>
<%
   String submit=request.getParameter("submit");
   if(submit!=null)
   { 
     for(int i=0;i<count;i++)
    {
        if(ans[i]!=null)
        {
            if(ans[i].equals("true"))
            { Correct++; }
            else if(ans[i].equals("false") )
            { Incorrect++; }
//            out.print(ans[i]);
        }
    } 
      response.sendRedirect("Result.jsp?CORRECT="+Correct+"&&INCORRECT="+Incorrect+"&&correct="+sahi+"&&Wrong="+galat+"&&count="+count+"&&notattempt="+notattempt+"");
   }
   
%>
   

