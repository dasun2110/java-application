<%-- 
    Document   : print_confirmation
    Created on : May 6, 2018, 10:39:58 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
           
    </head>
    <body>

        
<%! String NIC = null; %>
<%
//allow access only if session exists
String re1 = null;String g1 = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else re1 = (String) session.getAttribute("r"); g1 = (String) session.getAttribute("g"); NIC = (String) session.getAttribute("n");

%>

<%
  boolean st =false; boolean dl =false;
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM corders WHERE NIC=?");
         ps.setString(1, NIC);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
         PreparedStatement pss =(PreparedStatement)con.prepareStatement("SELECT * FROM dorders WHERE NIC=?");
         pss.setString(1, NIC);
         ResultSet rss =pss.executeQuery();
         dl = rs.next();       
      }catch(Exception e)
      {
          e.printStackTrace();
      }
       %>  
       
       
<% if(dl) { %>

<%
  
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement pdl =(PreparedStatement)con.prepareStatement ("DELETE FROM `dorders` WHERE `NIC`=? ");
                    pdl.setString(1, NIC);
                    pdl.executeUpdate();
                
      }catch(Exception e)
      {
          e.printStackTrace();
      }
       %>  

       <form action="del_to_profile" method="post">
           <h1 style="color:orange;"> The order you placed has currently been DECLINED by the constructor. Kindly await for further details via email or contact us.</h1>
           <input type="submit" value="OK">
       </form>

        <% } else{if(st) { %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>

<%@ page import="java.sql.DriverManager" %>
                        
                        
<table border="0" cellspacing="1" cellpadding="8" align="center">   
     
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT * FROM `corders` WHERE NIC=?");
p.setString(1, NIC);
ResultSet rs= p.executeQuery();
while(rs.next())
{
%>
<tr><td colspan="2"><h1 align="center" style="color:orange">Your order has been confirmed !</h1></td></tr>
     <tr ><td colspan="6" style="color: lightgoldenrodyellow; font-size: 20px;"><%=rs.getString("Name") %> ,your order has been confirmed.Please note that once an 
            order has been placed; you won't be able to change the main details 
            of the construction. There won't be online payment methods. All payments will be
            done at the office.You selected ;<br>
            <br>- <%=rs.getString("Architect") %> as your architect,
            <br>- <%=rs.getString("Engineer") %> as your engineer,
            <br>- <%=rs.getString("Interior_Designer") %> as your Interior Designer, 
            <br>- <%=rs.getString("Quantity_Surveyor") %> as your Quantity Surveyor,
            <br>- <%=rs.getString("Carpenter") %> as your Carpenter<br>
            . . . . . for your <%=rs.getString("Project_Type") %> construction project. </td>
          <td style="background-color: lightgoldenrodyellow; border: 5px solid coral; ">
          <h1 style="color: coral; text-align: center;">Select and enter to your private chat below</h1>
          </td></tr>
                                        
             <tr><td colspan="6" rowspan="7" style="color: lightgoldenrodyellow;">
         <h2> Project Details</h2>
<p>Land_Number: <%=rs.getString("Land_Number") %></p>
<p>Street     :<%=rs.getString("Street") %></p>
<p>City       :<%=rs.getString("City") %></p>
<p>District   :<%=rs.getString("District") %></p>
<p>Province   : <%=rs.getString("Province") %></p>
<p>Land_Area  : <%=rs.getString("Land_Area") %></p>
         </td> <td align="center" style="background-color: lightgoldenrodyellow; "><form method="post" action="chatClient"><input type="submit" value="Constructor" class="submit chat"></form></td><tr>
     <tr ><td align="center" style="background-color: lightgoldenrodyellow; "><form method="post" action="chatA"><input type="submit" value="Architect" class="submit chat"></form></td></tr>
     <tr ><td align="center" style="background-color: lightgoldenrodyellow; "><form method="post" action="chatE"><input type="submit" value="Engineer" class="submit chat"></form></td></tr>
     <tr ><td align="center" style="background-color: lightgoldenrodyellow; "><form method="post" action="chatI"><input type="submit" value="Interior Designer" class="submit chat"></form></td></tr>
     <tr ><td align="center" style="background-color: lightgoldenrodyellow; "><form method="post" action="chatQ"><input type="submit" value="Quantity Surveyor" class="submit chat"></form></td></tr>
     <tr ><td align="center" style="background-color: lightgoldenrodyellow; "> <form method="post" action="chatCAR"><input type="submit" value="Carpenter" class="submit chat"></form></td></tr>
                                              
                                
                                        
</table>                    
 

    

   


    



                                        
                                        
                                        
                                        
                                   

 <%

}
%>
    
<%
rs.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>

<% } else { %>

<h1 align="center" style="color:orange">Kindly wait for the constructor to confirm your order....</h1>
    <br><center><img src="pho/load.gif" width="200" height="200">     </center>     
<% } } %>                        
                    
    </body>
</html>

