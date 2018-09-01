import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/project_completed"})
public class project_completed extends HttpServlet {
static String n,Name,Gender,n1,n2,n3,n4,n5,nic;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         nic = request.getParameter("nic");
         HttpSession session = request.getSession(false);
        Gender = (String) session.getAttribute("g");
        Name = (String) session.getAttribute("r");
        n=(String) session.getAttribute("n");
         n1=nic+"A";
          n2=nic+"E";
          n3=nic+"I";
          n4=nic+"Q";
          n5=nic+"C"; 
            
          Project.delete_from_corders(nic);
          Constructor.delete_table_chat(nic);
          Constructor.delete_table_chat(n1);
          Constructor.delete_table_chat(n2);
          Constructor.delete_table_chat(n3);
          Constructor.delete_table_chat(n4);
          Constructor.delete_table_chat(n5);
            
            RequestDispatcher rs = request.getRequestDispatcher("constructor.jsp");
           rs.include(request, response);
    }
}
