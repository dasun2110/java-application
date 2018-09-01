package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class ChatClient_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 int P ; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/showdata1.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <title>Chat 1</title>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\" src=\"jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("        var auto_refresh = setInterval(\n");
      out.write("        function ()\n");
      out.write("        {\n");
      out.write("        $('#load_me').load('showdata1.jsp').fadeIn(\"slow\");\n");
      out.write("        }, 5000); // autorefresh the content of the div after\n");
      out.write("                   //every 5000 milliseconds(5sec)\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            .send{margin-top: 6px;\n");
      out.write("    margin-bottom: 16px;\n");
      out.write("                padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px; font-size: 16px; background-color: lightgoldenrodyellow; border: 1px solid lightcoral; color: lightcoral;\n");
      out.write("            }\n");
      out.write("            .send:hover{\n");
      out.write("                font-size: 16px; background-color: lightgoldenrodyellow; border: 2px solid lightcoral; color: lightcoral;\n");
      out.write("            }\n");
      out.write("            input[type=text]{\n");
      out.write("                height: 30px; width:400px;\n");
      out.write("                border-radius: 6px;\n");
      out.write("    box-sizing: border-box; border-color: lightcoral;\n");
      out.write("    margin-top: 6px;\n");
      out.write("    margin-bottom: 16px;\n");
      out.write("    resize: vertical;\n");
      out.write("                  padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <form name=\"f\" action=\"Send\" method=\"post\">\n");
      out.write("            <table border=\"0\" width=\"600px;\" style=\"max-height: auto;\">\n");
      out.write("                <tr><td colspan=\"2\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"box\">                      \n");
      out.write("                      \n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("<div id=\"load_me\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <table border=\"0\" cellspacing=\"1\" cellpadding=\"8\" width=\"500px\">\n");
      out.write("    <tr><td style=\"background-color: lightgreen\" align=\"center\">Conversation</td></tr>\n");
      out.write("    \n");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT * FROM `msgs`");
ResultSet rs= p.executeQuery();
while(rs.next())
{

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    ");
      out.write("\n");
      out.write("    ");
 P = rs.getInt("P"); 
      out.write("\n");
      out.write("    ");
 if(P==0){ 
      out.write("\n");
      out.write("    <td align=\"right\" style=\"background-color: lawngreen; max-width:400px; max-height: auto;\" >");
      out.print(rs.getString("Name") );
      out.write("<br>");
      out.print(rs.getString("msg") );
      out.write("<br></td>\n");
 } else {
      out.write("\n");
      out.write("    <td align=\"left\" style=\"background-color: lightskyblue; max-width:400px; max-height: auto;\">");
      out.print(rs.getString("Name") );
      out.write("<br>");
      out.print(rs.getString("msg") );
      out.write("<br></td>\n");
 } 
      out.write("\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" ");


}

      out.write("\n");
      out.write("</table>\n");

rs.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}

      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        </div>   \n");
      out.write("                    </td></tr>\n");
      out.write("                <tr><td width=\"400px\"><input type=\"text\" name=\"msg\" id=\"msg\"></td><td width=\"100px\" style=\"float:left; vertical-align: bottom;\" ><input type=\"submit\" class=\"submit send\" value=\"Send\"></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>        \n");
      out.write("        \n");
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
