import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
 
    static String E_Mail,fname,lname;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         
        
        String gender = request.getParameter("gender");
        fname = request.getParameter("name");
        lname = (String) request.getParameter("nic");
         E_Mail = request.getParameter("E_Mail");
        String pbn = request.getParameter("pbn");
        String str = request.getParameter("str");
        String cit= request.getParameter("cit");
        String cn = request.getParameter("cn");
        String Password = request.getParameter("Password");
        
        System.err.println(E_Mail);
        if(Validation.checkUserEmail(E_Mail))
        {
            out.println("<html><body><script> alert('The E-Mail you provided is already in use !'); </script></body></html>");
           RequestDispatcher rs = request.getRequestDispatcher("reg.html");
           rs.include(request, response);
}
else
{
    if(Validation.checkUserPassword(Password))
        {
            out.println("<html><body><script> alert('The Password you provided is already in use !'); </script></body></html>");
           RequestDispatcher rs = request.getRequestDispatcher("reg.html");
           rs.include(request, response);
}
else
{
    if(Validation.checkUserNIC(lname))
        {
            out.println("<html><body><script> alert('The NIC number you provided is already in use !'); </script></body></html>");
           RequestDispatcher rs = request.getRequestDispatcher("reg.html");
           rs.include(request, response);}
    else{
       
           Client.register(gender, fname, lname, E_Mail, pbn, str, cit, cn, Password);
           RequestDispatcher rs = request.getRequestDispatcher("ontheway.html");
           rs.include(request, response);
        
    }  
}
}}}