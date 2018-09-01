<%-- 
    Document   : CurrentOrders
    Created on : May 4, 2018, 7:19:29 PM
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
        <style>
            .button3 {
        padding-bottom: 8px; padding-top: 8px; padding-left: 21px; padding-right: 21px;
                font-size: 16px; border:1px solid green; 
                color: green; background-color: lightgreen;
    }
    .button3:hover{cursor: pointer;
        font-size: 14px; border:3px solid green; 
                
    }
    .button4 {
        padding-bottom: 8px; padding-top: 8px; padding-left: 21px; padding-right: 21px;
                font-size: 16px; border:1px solid darkorchid; 
                color: darkorchid; background-color: lightblue;
    }
    .button4:hover{cursor: pointer;
        font-size: 14px; border:3px solid darkorchid; 
                
    }
        </style>
       
         <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
                        
                        

<table border="1" cellspacing="1" cellpadding="8" >
    <tr>
        <td>Gender</td>
<td>Name</td>
<td>Project Type</td>
<td>Contact Number</td>
<td>E-Mail</td>
<td colspan="3"></td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement
  (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC ");
ResultSet rs= p.executeQuery();
while(rs.next())
{
%>

    <tr><td><%=rs.getString("Gender") %></td>
<td><%=rs.getString("Name") %></td>
<td><%=rs.getString("Project_Type") %></td>
<td><%=rs.getString("Contact_Number") %></td>
<td><%=rs.getString("E_Mail") %></td>

<td colspan="2">
    <form name="f1" method="post" action="go_to_ChatPage">
        <table border="0">
            <tr><td>
                    <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                    <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
    </form>
</td>

<td>
    <form name="f1" method="post" action="project_completed">
        <table border="0">
            <tr><td>
                    <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                    <input type="submit" onclick="return(check_project());" class="submit button4" value="Project Completed"></td></tr></table>
    </form>
    
    </td>

    </tr>
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
