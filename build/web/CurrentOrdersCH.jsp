<%-- 
    Document   : CurrentOrdersCH
    Created on : May 11, 2018, 9:17:10 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>BT Constructions</title></head>
    <body><style>
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
       <%! String nn = null; %>                       <%
//allow access only if session exists
String rr = null;String gg = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else rr = (String) session.getAttribute("r");gg = (String) session.getAttribute("g");nn = (String) session.getAttribute("n");


%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<table border="1" cellspacing="1" cellpadding="8" >
    <tr><td>Gender</td><td>Name</td><td>Project Type</td><td>Contact Number</td><td>E-Mail</td><td colspan="3"></td></tr>
<%boolean architect =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement
        (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Architect=?");
         ps.setString(1, rr);
         ResultSet rs =ps.executeQuery();
         architect = rs.next();  
      }catch(Exception e){e.printStackTrace();}    %>
      
      <%boolean engineer =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement
        (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Engineer=?");
         ps.setString(1, rr);
         ResultSet rs =ps.executeQuery();
         engineer = rs.next();  
      }catch(Exception e){e.printStackTrace();}    %>
      
      <%boolean carpenter =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement
        (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Carpenter=?");
         ps.setString(1, rr);
         ResultSet rs =ps.executeQuery();
         carpenter = rs.next();  
      }catch(Exception e){e.printStackTrace();}    %>
      
      <%boolean qs =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement
        (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Quantity_Surveyor=?");
         ps.setString(1, rr);
         ResultSet rs =ps.executeQuery();
         qs = rs.next();  
      }catch(Exception e){e.printStackTrace();}    %>
      
      <%boolean id =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement
        (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Interior_Designer=?");
         ps.setString(1, rr);
         ResultSet rs =ps.executeQuery();
         id = rs.next();  
      }catch(Exception e){e.printStackTrace();}    %>

      <%boolean all =false;
      try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement
        (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Architect=? OR corders.Engineer=? OR corders.Interior_Designer=? OR corders.Quantity_Surveyor=? OR corders.Carpenter=?");
         ps.setString(1, rr);ps.setString(2, rr);ps.setString(3, rr);ps.setString(4, rr);ps.setString(5, rr);
         ResultSet rs =ps.executeQuery();
         all= rs.next();  
      }catch(Exception e){e.printStackTrace();}    %>




<% if(architect) { %>
    <%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection
                                    ("jdbc:mysql://localhost/bt","root",""); 
    PreparedStatement p = (PreparedStatement)con.prepareStatement
      (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Architect=?");
    p.setString(1, rr);
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
        <form name="f1" method="post" action="go_to_ChatPage_other">
            <table border="0">
                <tr><td><input hidden type="text" name="code" value="A" ></td></tr><tr><td>
                        <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                        <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
        </form></td></tr>
     <% } %>
    </table>
    <% rs.close(); con.close(); } catch(Exception e) { e.printStackTrace();} %>
<% } else { %>
                        



    <% if(engineer) { %>
    <%
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection)DriverManager.getConnection
                                    ("jdbc:mysql://localhost/bt","root",""); 
    PreparedStatement p = (PreparedStatement)con.prepareStatement
      (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Engineer=?");
    p.setString(1, rr);
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
        <form name="f1" method="post" action="go_to_ChatPage_other">
            <table border="0">
                <tr><td><input hidden type="text" name="code" value="E" ></td></tr><tr><td>
                        <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                        <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
        </form></td></tr>
     <% } %>
    </table>
    <% rs.close(); con.close(); } catch(Exception e) { e.printStackTrace();} %>
    <% } else { %>

        <% if(id) { %>
        <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                        ("jdbc:mysql://localhost/bt","root",""); 
        PreparedStatement p = (PreparedStatement)con.prepareStatement
          (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Interior_Designer=?");
        p.setString(1, rr);
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
            <form name="f1" method="post" action="go_to_ChatPage_other">
                <table border="0">
                    <tr><td><input hidden type="text" name="code" value="I" ></td></tr><tr><td>
                            <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                            <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
            </form></td></tr>
         <% } %>
        </table>
        <% rs.close(); con.close(); } catch(Exception e) { e.printStackTrace();} %>
        <% } else { %>

            <% if(qs) { %>
            <%
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection
                                            ("jdbc:mysql://localhost/bt","root",""); 
            PreparedStatement p = (PreparedStatement)con.prepareStatement
              (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Quantity_Surveyor=?");
            p.setString(1, rr);
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
                <form name="f1" method="post" action="go_to_ChatPage_other">
                    <table border="0">
                        <tr><td><input hidden type="text" name="code" value="Q" ></td></tr><tr><td>
                                <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                                <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
                </form></td></tr>
             <% } %>
            </table>
            <% rs.close(); con.close(); } catch(Exception e) { e.printStackTrace();} %>
            <% } else { %>

                <% if(carpenter) { %>
                <%
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection
                                                ("jdbc:mysql://localhost/bt","root",""); 
                PreparedStatement p = (PreparedStatement)con.prepareStatement
                  (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC WHERE corders.Carpenter=?");
                p.setString(1, rr);
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
                    <form name="f1" method="post" action="go_to_ChatPage_other">
                        <table border="0">
                            <tr><td><input hidden type="text" name="code" value="C" ></td></tr><tr><td>
                                    <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                                    <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
                    </form></td></tr>
                 <% } %>
                </table>
                <% rs.close(); con.close(); } catch(Exception e) { e.printStackTrace();} %>
                <% } else { %>



                <h2> No orders</h2>

                <%--<% if(!all) { %>
                <%
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection
                                                ("jdbc:mysql://localhost/bt","root",""); 
                PreparedStatement p = (PreparedStatement)con.prepareStatement
                  (" SELECT register.Gender, register.Name, register.NIC, register.E_Mail, register.Contact_Number, corders.Project_Type FROM register JOIN corders ON register.NIC = corders.NIC");
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
                            <tr><td><input hidden type="text" name="code" value="" ></td></tr><tr><td>
                                    <input hidden type="text" name="nic" value="<%=rs.getString("NIC")%>" ></td></tr><tr><td>
                                    <input type="submit" class="submit button3" value="Message your client"></td></tr></table>
                    </form></td></tr>
                 <% } %>
                </table>
                <% rs.close(); con.close(); } catch(Exception e) { e.printStackTrace();} %>--%>
                <% } %>
                
            <% } %>
        <% } %>
    <% } %>
<% } %>

    </body>
</html>
