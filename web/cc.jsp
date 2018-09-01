<%-- 
    Document   : cc
    Created on : May 5, 2018, 7:07:42 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><script>
                    function sure()
   {
       var val = confirm("You are about to delete all your guest messages. Please confirm.");
       if (val==true)return true; else return false;
   }
   
   function con()
   {
       var val = confirm("You are to be Logged-out.");
       if (val==true)return true; else return false;
   }
   

            function decline()
   {
       var val = confirm("You are about to DECLINE an order.");
       if (val==true)return true; else return false;
   }  
   function confirm()
   {
       var val = confirm("You are about to CONFIRM an order.");
       if (val==true)return true; else return false;
   }  
            
    </script> 
    </head>
    <body>
        
   
         <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
        
<%! String n1 = null; %>
 <%
//allow access only if session exists
String r1 = null;String g1 = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else r1 = (String) session.getAttribute("r"); g1 = (String) session.getAttribute("g"); n1 = (String) session.getAttribute("n");

%>
    
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>

<%@ page import="java.sql.DriverManager" %>
                        
                        

<form name="f1" method="post">
<table border="0" style="color: black;" cellpadding="3">   
     
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT * FROM `orders`");
ResultSet rs= p.executeQuery();
while(rs.next())
{
%>
 <tr>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Name</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">NIC</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Project_Type</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Land_Number</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Street</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">City</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">District</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Province</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Land_Area</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Architect</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Engineer</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Interior_Designer</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Quantity_Surveyor</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Carpenter</td>
<td style="font-style: algerian; font-size: 16px;  background-color: lightgreen; border: 3px solid lime" align="center">Remarks</td>
    </tr>
<tr>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Name" value="<%=rs.getString("Name")%>" ><%=rs.getString("Name") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="NIC" value="<%=rs.getString("NIC")%>" ><%=rs.getString("NIC") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Project_Type" value="<%=rs.getString("Project_Type")%>" ><%=rs.getString("Project_Type") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Land_Number" value="<%=rs.getString("Land_Number")%>" ><%=rs.getString("Land_Number") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Street" value="<%=rs.getString("Street")%>" ><%=rs.getString("Street") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="City" value="<%=rs.getString("City")%>" ><%=rs.getString("City") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="District" value="<%=rs.getString("District")%>" ><%=rs.getString("District") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Province" value="<%=rs.getString("Province")%>" ><%=rs.getString("Province") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Land_Area" value="<%=rs.getString("Land_Area")%>" ><%=rs.getString("Land_Area") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Architect" value="<%=rs.getString("Architect")%>" ><%=rs.getString("Architect") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Engineer" value="<%=rs.getString("Engineer")%>" ><%=rs.getString("Engineer") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Interior_Designer" value="<%=rs.getString("Interior_Designer")%>" ><%=rs.getString("Interior_Designer") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Quantity_Surveyor" value="<%=rs.getString("Quantity_Surveyor")%>" ><%=rs.getString("Quantity_Surveyor") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Carpenter" value="<%=rs.getString("Carpenter")%>" ><%=rs.getString("Carpenter") %></td>
<td align="right" style="background-color: lightgoldenrodyellow;"><input hidden type="text" name="Remarks" value="<%=rs.getString("Remarks")%>" ><%=rs.getString("Remarks") %></td>
</tr>
<tr><td colspan="14" align="right" style="background-color: lightgoldenrodyellow;">
                    <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" >
                    <input type="submit" onClick="return(confirm());" class="submit button3" value="Confirm" formaction="order_confirm" >
</td>



<td align="left" style="background-color: lightgoldenrodyellow;">
    <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" >
    <input type="submit" class="submit button4" onClick="return(decline());" value="Decline" formaction="order_decline" ></td>
</tr>
<tr><td colspan="15"></td></tr>

 <%

}
%>
    </table></form>
<%
rs.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>

                        
    </body>
</html>

