import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/del_to_profile"})
public class del_to_profile extends HttpServlet {
static String n,Name,Gender;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
         HttpSession session = request.getSession(false);
        Gender = (String) session.getAttribute("g");
        Name = (String) session.getAttribute("r");
        n=(String) session.getAttribute("n");
          
            
            RequestDispatcher rs = request.getRequestDispatcher("profile.jsp");
           rs.include(request, response);
    }
}
