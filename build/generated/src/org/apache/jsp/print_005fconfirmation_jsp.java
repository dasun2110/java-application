package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class print_005fconfirmation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String NIC = null; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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


      out.write("\n");
      out.write("\n");
      out.write("        ");
 if(check_for_confirmation.checkUserC(NIC)) { 
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
      out.write("\n");
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
 } 
      out.write("                        \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
