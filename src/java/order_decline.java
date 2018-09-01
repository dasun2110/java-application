import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/order_decline"})
public class order_decline extends HttpServlet {
static String nn;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
         String Name = request.getParameter("Name");
         nn = request.getParameter("NIC");
            String Project_Type = request.getParameter("Project_Type");
            String Land_Number = request.getParameter("Land_Number");
            String Street = request.getParameter("Street");
            String City = request.getParameter("City");
            String District = request.getParameter("District");
            String Province = request.getParameter("Province");
            String Land_Area = request.getParameter("Land_Area");
            String Architect = request.getParameter("Architect");
            String Engineer = request.getParameter("Engineer");
            String Interior_Designer = request.getParameter("Interior_Designer");
            String Quantity_Surveyor = request.getParameter("Quantity_Surveyor");
            String Carpenter = request.getParameter("Carpenter");
            String Remarks = request.getParameter("Remarks");
          
            Constructor.decline_order(Name, nn, Project_Type, Land_Number, Street, City, District, Province, Land_Area, Architect, Engineer, Interior_Designer, Quantity_Surveyor, Carpenter, Remarks);
            Project.delete_from_orders(nn);
            
            RequestDispatcher rs = request.getRequestDispatcher("constructor_confirming.jsp");
           rs.include(request, response);
    }
}
