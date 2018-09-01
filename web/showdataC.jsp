<%-- 
    Document   : showdataC
    Created on : May 2, 2018, 2:27:07 PM
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
    
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT * FROM "+n1+"  ");
ResultSet rs= p.executeQuery();
while(rs.next())
{
%>


<tr>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.io.*"%>
<% Blob image = null; byte[ ] imgData = null ; %>
    <%! String m ; %> <% m = rs.getString("msg"); %>
    <%! String d ; %> <% d = rs.getString("dt"); %>
    <%! String name ; %> <% name = rs.getString("Name"); %>
    <%! int P ; %> <% P = rs.getInt("P"); %>
    
<% if(m!=null) { %>
    <% if(P==0){ %>
    <td align="right" style="background-color: lightgoldenrodyellow; max-width:400px; max-height: auto;" ><b><%=name %></b><br><%=m %><p style="font-style: Comic Sans MS" ><i><%=d %></i></p></td>
    <% } else {%>
    <td align="left" style="background-color: burlywood; max-width:400px; max-height: auto;"><b><%=name %></b><br><%=m %><p style="font-style: Comic Sans MS" ><i><%=d %></i></p></td>
    <% } %>
<%} else { %>
<%--    <% if(P==0){ %>
    <td align="right" style="background-color: lightskyblue; max-width:400px; max-height: auto;" ><b><%=name %></b><br>
        
       <% 
        if (rs.next()) {
        image = rs.getBlob("pic");
        imgData = image.getBytes(1,(int)image.length());
        } 
        response.setContentType("image/jpg");
        OutputStream o = response.getOutputStream();
        o.write(imgData); 
        o.flush();
        o.close();%>
        
        <hr><i><%=d %></i></td>
    <% } else {%>
    <td align="left" style="background-color: lawngreen; max-width:400px; max-height: auto;"><b><%=name %></b><br>
        
         <% 
        if (rs.next()) {
        image = rs.getBlob("pic");
        imgData = image.getBytes(1,(int)image.length());
        }      
        response.setContentType("image/jpg");
        OutputStream o = response.getOutputStream();
        o.write(imgData); 
        o.flush();
        o.close();%>
        
      <hr><i><%=d %></i></td>--%>  
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

