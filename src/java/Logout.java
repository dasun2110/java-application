import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {
 
	private static final long serialVersionUID = 1L;
       
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    	response.setContentType("text/html");
        PrintWriter out = response.getWriter();
    	
    	HttpSession session = request.getSession(false);
    	if(session != null){
    		session.invalidate();
    	}
        RequestDispatcher rs = request.getRequestDispatcher("myhome2.html");
        rs.include(request, response);
    }
}