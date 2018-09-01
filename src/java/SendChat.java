import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "SendChat", urlPatterns = {"/SendChat"})
public class SendChat extends HttpServlet {
 static String r,g,Name,n;
 static int number = 0;
 
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
        String msg = request.getParameter("msg");
        java.util.Date date = new java.util.Date();
        String d = date.toString();
        
        Client.send_chat(number, Name, msg, d, n);
        Name = null; msg = null;
       response.sendRedirect("chatC.jsp");
               
    }
}