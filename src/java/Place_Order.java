import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(name = "Place_Order", urlPatterns = {"/Place_Order"})
public class Place_Order extends HttpServlet {
 
    static String Gender,Name,n;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();  
        String NIC = request.getParameter("NIC");
        HttpSession session = request.getSession(false);
        Gender = (String) session.getAttribute("g");
        Name = (String) session.getAttribute("r");
        n=(String) session.getAttribute("n");
        
        
        if(Validation.check(Gender,Name,NIC))
        {          
            
            String name = request.getParameter("name");
            String Project = request.getParameter("Project");
            String landnumber = request.getParameter("landnumber");
            String street = request.getParameter("street");
            String city = request.getParameter("city");
            String district = request.getParameter("district");
            String province = request.getParameter("province");
            String landarea = request.getParameter("landarea");
            String architect = request.getParameter("architect");
            String engineer = request.getParameter("engineer");
            String interiordesigner = request.getParameter("interiordesigner");
            String qs = request.getParameter("qs");
            String carpenter = request.getParameter("carpenter");
            String remarks = request.getParameter("remarks");
            
            
            
          Client.place_order(name, NIC, Project, landnumber, street, city, district, province, landarea, architect, engineer, interiordesigner, qs, carpenter, remarks);
            RequestDispatcher rs = request.getRequestDispatcher("wait.jsp");
           rs.include(request, response);
           
           
            
        }
        else
        {
            out.println("<html><body><script> alert('NIC is in-valid !'); </script></body></html>");
            RequestDispatcher rs = request.getRequestDispatcher("profile.jsp");
           rs.include(request, response);
        }
    }  
}

        
    
