
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(name = "go_to_boss", urlPatterns = {"/go_to_boss"})
public class go_to_boss extends HttpServlet {
 
    static String g,r,n;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String E_Mail = request.getParameter("E_Mail");
        String Password = request.getParameter("Password");
         try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

             //creating connection with the database
                    Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
                PreparedStatement p = (PreparedStatement)con.prepareStatement("SELECT Gender,Name,NIC FROM `owner` WHERE E_Mail=? AND Password=?");            
                p.setString(1, E_Mail);
                p.setString(2, Password);
                ResultSet rs =p.executeQuery();
                while(rs.next()){
                    g=rs.getString(1);
                    r=rs.getString(2);
                    n=rs.getString(3);
                    }
            
        }catch(ClassNotFoundException | SQLException e)
      {
          
      }
        
        
        HttpSession session = request.getSession();
            session.setAttribute("r", r);
            session.setAttribute("g", g);
            session.setAttribute("n", n);
            //session.setMaxInactiveInterval(30*60);
            RequestDispatcher rs = request.getRequestDispatcher("constructor.jsp");
           rs.include(request, response);
        
        
    }
}