package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class wait_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String n = null; 
 String NIC = null; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/print_confirmation.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .text {\n");
      out.write("\tborder: 4px solid black;\n");
      out.write("\tborder-radius: 17px;\n");
      out.write("\theight: 60px;\n");
      out.write("\twidth: 230px;\n");
      out.write("        font-weight: bold;\n");
      out.write("   background-color:gainsboro;\n");
      out.write("    cursor: text;\n");
      out.write("}\n");
      out.write("            .submit{\n");
      out.write("                cursor: pointer;\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                background-color:black;\n");
      out.write("                border:1px solid white; color:white; \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .submit1:hover{background-color:orangered; border: 3px solid black; color:black;}\n");
      out.write("               .sub:hover{background-color:blue; border: 2px solid black; color:white;}  \n");
      out.write("            .submit2{\n");
      out.write("                \n");
      out.write("              display: table;\n");
      out.write("              width: 100%;\n");
      out.write("               background: #222  repeat-x;\n");
      out.write("    display: inline-block;\n");
      out.write("    padding: 3px 7px 7px 4px;\n");
      out.write("    color: #fff;\n");
      out.write("    text-decoration: none;\n");
      out.write("    font-weight: bold;\n");
      out.write("    line-height: 1;\n");
      out.write("    -moz-border-radius: 5px;\n");
      out.write("    -webkit-border-radius: 5px;\n");
      out.write("    -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\n");
      out.write("    -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);\n");
      out.write("    text-shadow: 0 -1px 1px rgba(0,0,0,0.25);\n");
      out.write("    border-bottom: 1px solid rgba(0,0,0,0.25);\n");
      out.write("    position: relative;\n");
      out.write("    cursor: pointer; \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .fb5 {\n");
      out.write("\tbackground-color: lightseagreen;\n");
      out.write("\tpadding-left:13px;\n");
      out.write("\tpadding-right:13px;\n");
      out.write("\tpadding-top:5px;\n");
      out.write("\tpadding-bottom:5px;\t\n");
      out.write("\tcolor: black;\n");
      out.write("        border-radius: 10px;\n");
      out.write("\tborder:1px solid blue;\n");
      out.write("\tbackground-image: url(images/button_bg.jpg);\n");
      out.write("}\n");
      out.write(".fb5:hover {\n");
      out.write("        color: white;\n");
      out.write("        border-radius: 10px;\n");
      out.write("\tbackground-color: blue;\t\n");
      out.write("\tborder:1px solid lightseagreen;\n");
      out.write("\tbackground-image: url(images/button_bg_over.jpg);\n");
      out.write("}\n");
      out.write("\n");
      out.write("            \n");
      out.write("            .submit3:hover{background-color:grey; border: 2px solid black; color:black;}\n");
      out.write("            .navbar {\n");
      out.write("    overflow: hidden;\n");
      out.write("    background-color:none;\n");
      out.write("    font-family: Arial, Helvetica;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a {\n");
      out.write("    float: right;\n");
      out.write("    font-size: 16px;\n");
      out.write("    color: white;\n");
      out.write("    text-align: right;\n");
      out.write("    padding: 14px 140px;\n");
      out.write("    \n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown {\n");
      out.write("    float: right;\n");
      out.write("    overflow: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown .dropbtn {\n");
      out.write("    font-size: 16px;    \n");
      out.write("    border: none;\n");
      out.write("    outline: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 16px;\n");
      out.write("    background-color: inherit;\n");
      out.write("    font-family: inherit;\n");
      out.write("    margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a:hover, .dropdown:hover .dropbtn {\n");
      out.write("     border-top: 2px solid black; border-right: 2px solid black; border-left: 2px solid black;\n");
      out.write("    color: white;    \n");
      out.write("    border-bottom: 2px solid white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content {\n");
      out.write("    display: none;\n");
      out.write("    position: absolute;\n");
      out.write("    \n");
      out.write("    background-color: #f9f9f9;\n");
      out.write("    min-width: 160px;\n");
      out.write("    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("    z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fb {\n");
      out.write("\tborder: 2px solid #777;\n");
      out.write("\tborder-radius: 10px;\n");
      out.write("\toutline: none;\n");
      out.write("        \n");
      out.write("        font-family: inherit;\n");
      out.write("        font-color:black;\n");
      out.write("}\n");
      out.write(".dropdown-content a {\n");
      out.write("    float: none;\n");
      out.write("    color: black;\n");
      out.write("    padding: 12px 16px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: block;\n");
      out.write("    text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a:hover {\n");
      out.write("    background-color: #717171;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropdown-content {\n");
      out.write("    display: block;\n");
      out.write("    }\n");
      out.write("      .submitt{cursor: pointer;\n");
      out.write("                padding-bottom: 7px; padding-top: 7px; padding-left: 25px; padding-right: 25px;\n");
      out.write("                font-size: 18px;\n");
      out.write("                color: white; font-weight: bold;\n");
      out.write("                background-image: url(pho/b_1.jpg);\n");
      out.write("                border:1px solid white;        \n");
      out.write("    }\n");
      out.write("    .submitt:hover{cursor: pointer;\n");
      out.write("                padding-bottom: 7px; padding-top: 7px; padding-left: 25px; padding-right: 25px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: white;\n");
      out.write("                background-image: url(pho/b_1.jpg);\n");
      out.write("                border:4px solid white;        \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("</style>\n");
      out.write("                <link rel=\"icon\" href=\"pho/icon.png\"/>\n");
      out.write("        <title>BT Constructions</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("        var auto_refresh = setInterval(\n");
      out.write("        function ()\n");
      out.write("        {\n");
      out.write("        $('#load_me').load('print_confirmation.jsp').fadeIn(\"slow\");\n");
      out.write("        }, 10000); // autorefresh the content of the div after\n");
      out.write("                   //every 10000 milliseconds(10sec)\n");
      out.write("   \n");
      out.write("   \n");
      out.write("   function con()\n");
      out.write("   {\n");
      out.write("       var val = confirm(\"Your are to be Logged-out.\");\n");
      out.write("       if (val==true)return true; else return false;\n");
      out.write("   }\n");
      out.write("   \n");
      out.write("   function check()\n");
      out.write("    {\n");
      out.write("       document.getElementById('t1').innerHTML=\"Client Name (with initials) :\";\n");
      out.write("document.getElementById('t2').innerHTML=\"NIC :\";\n");
      out.write("document.getElementById('t3').innerHTML=\"Project Type :\";\n");
      out.write("document.getElementById('l').innerHTML=\"Project Location : \"; \n");
      out.write("document.getElementById('l1').innerHTML=\"Land Number - \";\n");
      out.write("document.getElementById('l2').innerHTML=\"Street - \";\n");
      out.write("document.getElementById('l3').innerHTML=\"City - \";\n");
      out.write("document.getElementById('l4').innerHTML=\"District - \";\n");
      out.write("document.getElementById('l5').innerHTML=\"Province - \";\n");
      out.write("document.getElementById('t4').innerHTML=\"Land Area :\";\n");
      out.write("document.getElementById('t5').innerHTML=\"Select your Architect :\";\n");
      out.write("document.getElementById('t6').innerHTML=\"Select your Engineer :\";\n");
      out.write("document.getElementById('t7').innerHTML=\"Select your Interior Designer :\";\n");
      out.write("document.getElementById('t8').innerHTML=\"Select your Quantity Surveyor :\";\n");
      out.write("document.getElementById('t9').innerHTML=\"Select your Carpenter :\";\n");
      out.write("document.getElementById('t10').innerHTML=\"Remarks (Other Details) :\";\n");
      out.write("\n");
      out.write("        if( document.f1.name.value.length==0 ) { document.getElementById('t1').innerHTML=\"<p style='color:red;'>*Client Name (with initials) :</p>\";}\n");
      out.write("        if( document.f1.NIC.value.length==0 ) { document.getElementById('t2').innerHTML=\"<p style='color:red;'>*NIC :</p>\";}\n");
      out.write("        if( document.f1.Project.value.length==0 ) { document.getElementById('t3').innerHTML=\"<p style='color:red;'>*Project Type :</p>\";}\n");
      out.write("        if( document.f1.landnumber.value.length==0 ) { document.getElementById('l').innerHTML=\"<p style='color:red;'>*Project Location : </p>\"; document.getElementById('l1').innerHTML=\"<p style='color:red;'>*Land Number - </p>\";}\n");
      out.write("        if( document.f1.street.value.length==0 ) { document.getElementById('l').innerHTML=\"<p style='color:red;'>*Project Location : </p>\"; document.getElementById('l2').innerHTML=\"<p style='color:red;'>*Street - </p>\";}\n");
      out.write("        if( document.f1.city.value.length==0 ) { document.getElementById('l').innerHTML=\"<p style='color:red;'>*Project Location : </p>\"; document.getElementById('l3').innerHTML=\"<p style='color:red;'>*City - </p>\";}\n");
      out.write("        if( document.f1.district.value.length==0 ) { document.getElementById('l').innerHTML=\"<p style='color:red;'>*Project Location : </p>\"; document.getElementById('l4').innerHTML=\"<p style='color:red;'>*District - </p>\";}\n");
      out.write("        if( document.f1.province.value.length==0 ) { document.getElementById('l').innerHTML=\"<p style='color:red;'>*Project Location : </p>\"; document.getElementById('l5').innerHTML=\"<p style='color:red;'>*Province - </p>\";}\n");
      out.write("        if( document.f1.landarea.value.length==0 ) { document.getElementById('t4').innerHTML=\"<p style='color:red;'>*Land Area :</p>\";}\n");
      out.write("        if( document.f1.architect.value.length==0 ) { document.getElementById('t5').innerHTML=\"<p style='color:red;'>*Select your Architect :</p>\";}\n");
      out.write("        if( document.f1.engineer.value.length==0 ) { document.getElementById('t6').innerHTML=\"<p style='color:red;'>*Select your Engineer :</p>\";}\n");
      out.write("        if( document.f1.interiordesigner.value.length==0 ) { document.getElementById('t7').innerHTML=\"<p style='color:red;'>*Select your Interior Designer :</p>\";}\n");
      out.write("        if( document.f1.qs.value.length==0 ) { document.getElementById('t8').innerHTML=\"<p style='color:red;'>*Select your Quantity Surveyor :</p>\";}\n");
      out.write("        if( document.f1.carpenter.value.length==0 ) { document.getElementById('t9').innerHTML=\"<p style='color:red;'>*Select your Carpenter :</p>\";}\n");
      out.write("        \n");
      out.write("        var remarks = document.getElementById(\"remarks\");\n");
      out.write("        \n");
      out.write("         if (remarks.value.replace(/ /g,'').length) {} else { document.getElementById('t10').innerHTML=\"<p style='color:red;'>*Remarks (Other Details) :</p>\";document.getElementById('t').innerHTML=\"Please Enter ALL * fields !\"; return false;}\n");
      out.write("        var tell = remarks.value.replace(/ /g,'').length;\n");
      out.write("        if ( document.f1.name.value.length==0 || document.f1.NIC.value.length==0 || document.f1.Project.value.length==0 || document.f1.landnumber.value.length==0 || document.f1.street.value.length==0 || document.f1.city.value.length==0 || document.f1.district.value.length==0 || document.f1.province.value.length==0 || document.f1.landarea.value.length==0 || document.f1.architect.value.length==0 || document.f1.engineer.value.length==0 || document.f1.interiordesigner.value.length==0 || document.f1.qs.value.length==0 || document.f1.carpenter.value.length==0 )\n");
      out.write("        {document.getElementById('t').innerHTML=\"Please Enter ALL * fields !\"; return false;} \n");
      out.write("       else\n");
      out.write("       {if (tell > 1250){ document.getElementById('t10').innerHTML=\"<p style='color:red;'>Remarks (Other Details) :</p>\"; document.getElementById('t11').innerHTML=\"<p style='color:red;'>You have exceeded the maximum word limit!</p>\"; return false;\n");
      out.write("           }else { \n");
      out.write("                    return true;}\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("    </script>    \n");
      out.write("    </head>\n");
      out.write("    <body background=\"pho/12.jpg\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("           \n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"125px\"><img src=\"pho/logo2.png\" width=\"260\" height=\"100\" style=\"border-radius: 10px;\" alt=\"logo2\"/>\n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td  align=\"right\" width=\"900px\">\n");
      out.write("                        \n");
      out.write("                    </td><td align=\"left\" width=\"300px\" style=\"color: white; vertical-align: bottom;\">   \n");
      out.write("                        ");

//allow access only if session exists
String r = null;String g = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else r = (String) session.getAttribute("r");g = (String) session.getAttribute("g");n = (String) session.getAttribute("n");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
	if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}

      out.write("\n");
      out.write("<br><p style=\"font-size:23px;\">Hi ");
      out.print(g );
      out.print(r );
      out.write("</p><p style=\"font-size:16px;\"> You are logged-in.</p>\n");
      out.write("     \n");
      out.write("<form action=\"Logout\" method=\"post\">\n");
      out.write("<input type=\"submit\" value=\"Logout\" onClick=\"return(con());\" class=\"submit submitt\">\n");
      out.write("</form>        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("\n");
      out.write("                  </td>\n");
      out.write("                </tr>\n");
      out.write("        </table>\n");
      out.write("        <table border=\"1\" cellpadding=\"5\" style=\"color:white;\">\n");
      out.write("           \n");
      out.write("            <tbody >\n");
      out.write("                <tr >\n");
      out.write("                    <td width=\"1000px\"> \n");
      out.write("                        <br><h2 align=\"center\" style=\"color:yellow\">BT-constructions</h2>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("    <div id=\"load_me\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        \n");
      out.write('\n');

//allow access only if session exists
String re1 = null;String g1 = null; 
if((session.getAttribute("r") == null)&&(session.getAttribute("g") == null)&&(session.getAttribute("n") == null)){
	response.sendRedirect("myhome2.html");
}else re1 = (String) session.getAttribute("r"); g1 = (String) session.getAttribute("g"); NIC = (String) session.getAttribute("n");


      out.write('\n');
      out.write('\n');

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
       
      out.write("  \n");
      out.write("       \n");
      out.write("       \n");
 if(dl) { 
      out.write('\n');
      out.write('\n');

  
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
       
      out.write("  \n");
      out.write("\n");
      out.write("       <form action=\"del_to_profile\" method=\"post\">\n");
      out.write("           <h1 style=\"color:orange;\"> The order you placed has currently been DECLINED by the cunstructor. Kindly await for further details via email or contact us.</h1>\n");
      out.write("           <input type=\"submit\" value=\"OK\">\n");
      out.write("       </form>\n");
      out.write("\n");
      out.write("        ");
 } else{if(st) { 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("<table border=\"0\" cellspacing=\"1\" cellpadding=\"8\">   \n");
      out.write("     \n");

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

      out.write("\n");
      out.write("<tr><td colspan=\"15\"><h3 align=\"center\" style=\"color:orange\">Your order has been confirmed !</h3></td></tr>\n");
      out.write("                        \n");
      out.write(" <tr>\n");
      out.write("<td>Name</td>\n");
      out.write("<td>NIC</td>\n");
      out.write("<td>Project_Type</td>\n");
      out.write("<td>Land_Number</td>\n");
      out.write("<td>Street</td>\n");
      out.write("<td>City</td>\n");
      out.write("<td>District</td>\n");
      out.write("<td>Province</td>\n");
      out.write("<td>Land_Area</td>\n");
      out.write("<td>Architect</td>\n");
      out.write("<td>Engineer</td>\n");
      out.write("<td>Interior_Designer</td>\n");
      out.write("<td>Quantity_Surveyor</td>\n");
      out.write("<td>Carpenter</td>\n");
      out.write("<td>Remarks</td>\n");
      out.write("    </tr>\n");
      out.write("<tr>\n");
      out.write("<td>");
      out.print(rs.getString("Name") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("NIC") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Project_Type") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Land_Number") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Street") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("City") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("District") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Province") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Land_Area") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Architect") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Engineer") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Interior_Designer") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Quantity_Surveyor") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Carpenter") );
      out.write("</td>\n");
      out.write("<td>");
      out.print(rs.getString("Remarks") );
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("                                    <td colspan=\"15\" align=\"center\">\n");
      out.write("                                        <h1 style=\"color: coral;\">Select and enter to your private chat below</h1>\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td align=\"center\" colspan=\"15\">\n");
      out.write("                                        <table><tr>\n");
      out.write("                                                <td><form method=\"post\" action=\"chatClient\"><input type=\"submit\" value=\"Constructor\" class=\"submit chat\"></form></td>\n");
      out.write("                                                <td><form method=\"post\" action=\"chatA\"><input type=\"submit\" value=\"Architect\" class=\"submit chat\"></form></td>\n");
      out.write("                                                <td><form method=\"post\" action=\"chatE\"><input type=\"submit\" value=\"Engineer\" class=\"submit chat\"></form></td>\n");
      out.write("                                                <td><form method=\"post\" action=\"chatI\"><input type=\"submit\" value=\"Interior Designer\" class=\"submit chat\"></form></td>\n");
      out.write("                                                <td><form method=\"post\" action=\"chatQ\"><input type=\"submit\" value=\"Quantity Surveyor\" class=\"submit chat\"></form></td>\n");
      out.write("                                                <td><form method=\"post\" action=\"chatCAR\"><input type=\"submit\" value=\"Carpenter\" class=\"submit chat\"></form></td>\n");
      out.write("                                             \n");
      out.write("                                            </tr></table>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write(" ");


}

      out.write("\n");
      out.write("    </table>\n");

rs.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}

      out.write('\n');
      out.write('\n');
 } else { 
      out.write("\n");
      out.write("\n");
      out.write("<h3 align=\"center\" style=\"color:orange\">Kindly wait for the constructor to confirm your order....</h3>\n");
      out.write("                        <p id=\"t\" align=\"center\" style=\"color: red;\"></p>\n");
 } } 
      out.write("                        \n");
      out.write("                    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>   \n");
      out.write("                                   \n");
      out.write("               </td>\n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
