<%-- 
    Document   : ShowGuestMsg
    Created on : May 4, 2018, 6:34:43 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BT Constructions</title>
    </head>
    <body>
       <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
                        
                        

<table border="0" cellspacing="1" cellpadding="8" style="color: black;">
    <tr>
        <td style="font-style: algerian; font-size: 25px;  background-color: lightgreen; border: 3px solid lime" align="center">Name</td>
        <td style="font-style: algerian; font-size: 25px;  background-color: lightgreen; border: 3px solid lime" align="center">Email</td>
        <td style="font-style: algerian; font-size: 25px;  background-color: lightgreen; border: 3px solid lime" align="center">Subject</td>
        <td style="font-style: algerian; font-size: 25px;  background-color: lightgreen; border: 3px solid lime" align="center">Message</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT * FROM `guest`");
ResultSet rs= p.executeQuery();
while(rs.next())
{
%>
<tr style="border: 2px solid burlywood;"><td align="right" style="border: none; background-color: lightgoldenrodyellow; max-width:400px; max-height: auto;"><%=rs.getString("Name") %></td>
<td align="right" style="border: none; background-color: lightgoldenrodyellow; max-width:400px; max-height: auto;"><%=rs.getString("Email") %></td>
<td align="right" style="border: none; background-color: lightgoldenrodyellow; max-width:400px; max-height: auto;"><%=rs.getString("Subject") %></td>
<td align="right" style="border: none; background-color: lightgoldenrodyellow; max-width:400px; max-height: auto;"><%=rs.getString("Message") %></td></tr>

 <%

}
%>
</table>
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
