import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/GM"})
public class GM extends HttpServlet {

    static String r,g,n;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession(false);
        g = (String) session.getAttribute("g");
        r = (String) session.getAttribute("r");
        n=(String) session.getAttribute("n");
        
        RequestDispatcher rs = request.getRequestDispatcher("constructor_contacting.jsp");
           rs.include(request, response);
    }
}
