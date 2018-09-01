import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/order_confirm"})
public class order_confirm extends HttpServlet {
static String nn,Architect,Engineer,Interior_Designer,Quantity_Surveyor,Carpenter,n1,n2,n3,n4,n5;
   
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
            Architect = request.getParameter("Architect");
            Engineer = request.getParameter("Engineer");
            Interior_Designer = request.getParameter("Interior_Designer");
            Quantity_Surveyor = request.getParameter("Quantity_Surveyor");
            Carpenter = request.getParameter("Carpenter");
            String Remarks = request.getParameter("Remarks");
          n1=nn+"A";
          n2=nn+"E";
          n3=nn+"I";
          n4=nn+"Q";
          n5=nn+"C";
            
            Constructor.confirm_order(Name, nn, Project_Type, Land_Number, Street, City, District, Province, Land_Area, Architect, Engineer, Interior_Designer, Quantity_Surveyor, Carpenter, Remarks);
            Constructor.create_table_chat(nn);
            Constructor.create_table_chat(n1);
            Constructor.create_table_chat(n5);
            Constructor.create_table_chat(n2);
            Constructor.create_table_chat(n3);
            Constructor.create_table_chat(n4);
            Project.delete_from_orders(nn);
            
            RequestDispatcher rs = request.getRequestDispatcher("constructor_confirming.jsp");
           rs.include(request, response);
    }
}
