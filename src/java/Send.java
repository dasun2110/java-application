import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Send", urlPatterns = {"/Send"})
public class Send extends HttpServlet {
 static String g,r,n,nic,Name;
 static int number = 1;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         
        HttpSession session = request.getSession(false);
        g = (String) session.getAttribute("g");
        r = (String) session.getAttribute("r");
        n = (String) session.getAttribute("n");
        Name = g + r ; 
        nic = (String) session.getAttribute("nic");
        String msg = request.getParameter("msg");
        java.util.Date date = new java.util.Date();
        String d = date.toString();
        
        Client.send_chat(number, Name, msg, d, nic);
        Name = null; msg = null;
       response.sendRedirect("constructor_chat.jsp");
               
    }
}