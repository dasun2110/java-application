<%-- 
    Document   : showdataQ
    Created on : May 12, 2018, 12:15:38 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
         <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
        <table border="0" cellspacing="1" cellpadding="8" width="700px">
            <tr><td style="font-style: algerian; font-size: 30px;  background-color: lightgreen; border: 3px solid lime" align="center"><b>CONVERSATION</b></td></tr>
<%! String n1 = null; %>
 <%
//allow access only if session exists
String r1 = null;String g1 = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else r1 = (String) session.getAttribute("r"); g1 = (String) session.getAttribute("g"); n1 = (String) session.getAttribute("n");

%>
    
<%! String num; %> <% num=n1+"Q"; %>

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT * FROM "+num+"  ");
ResultSet rs= p.executeQuery();
while(rs.next())
{
%>


<tr>
    <%! int P ; %>
    <% P = rs.getInt("P"); %>
    <% if(P==0){ %>
    <td align="right" style="background-color: lightgoldenrodyellow; max-width:400px; max-height: auto;" ><b><%=rs.getString("Name") %></b><br><%=rs.getString("msg") %><p style="font-style: Comic Sans MS" ><i><%=rs.getString("dt") %></i></p></td>
<% } else {%>
    <td align="left" style="background-color: burlywood; max-width:400px; max-height: auto;"><b><%=rs.getString("Name") %></b><br><%=rs.getString("msg") %><p style="font-style: Comic Sans MS" ><i><%=rs.getString("dt") %></i></p></td>
<% } %>
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



