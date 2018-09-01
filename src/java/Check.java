import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(name = "Check", urlPatterns = {"/Check"})
public class Check extends HttpServlet {
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        
        String E_Mail = request.getParameter("E_Mail");
        String Password = request.getParameter("Password");
        
      
        if(Validation.val(E_Mail, Password))
        {
            RequestDispatcher rs = request.getRequestDispatcher("go_to_boss");
           rs.include(request, response);}
        else{
            if(Validation.valCH(E_Mail, Password))
            {RequestDispatcher rs = request.getRequestDispatcher("go_to_ch");
           rs.include(request, response);}
            else{
            
            RequestDispatcher rs = request.getRequestDispatcher("Login");
           rs.include(request, response);}
        }
        
    }}  
