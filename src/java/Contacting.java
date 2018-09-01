import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "Contacting", urlPatterns = {"/Contacting"})
public class Contacting extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String Name = request.getParameter("Name");
        String Email = request.getParameter("Email");
        String Subject = request.getParameter("Subject");
        String Message = request.getParameter("Message");
        
        Guest.external_message(Name, Email, Subject, Message);
           
           out.println("<html><body><script>alert('Your Inquiry has been sent. You will recieve a feedback via the E-mail address you provided.');</script></body></html>");
           RequestDispatcher rs = request.getRequestDispatcher("contact.html");
           rs.include(request, response);
        
    }

    

}
