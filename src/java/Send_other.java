import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Send_other", urlPatterns = {"/Send_other"})
public class Send_other extends HttpServlet {
 static String g,r,n,num,Name;
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
        num = (String) session.getAttribute("num");
        String msg = request.getParameter("msg");
        java.util.Date date = new java.util.Date();
        String d = date.toString();
        
        Client.send_chat(number, Name, msg, d, num);
        Name = null; msg = null;
       response.sendRedirect("clienthead_chat.jsp");
               
    }
}