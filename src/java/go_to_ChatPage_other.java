import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "go_to_ChatPage_other", urlPatterns = {"/go_to_ChatPage_other"})
public class go_to_ChatPage_other extends HttpServlet {

    static String g,r,n,num,code,nic;

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        nic = request.getParameter("nic");
        code = request.getParameter("code");
        HttpSession session = request.getSession(false);
        g = (String) session.getAttribute("g");
        r = (String) session.getAttribute("r");
        n=(String) session.getAttribute("n");
        num=nic+code;
        session.setAttribute("num", num);
        
        RequestDispatcher rs = request.getRequestDispatcher("clienthead_chat.jsp");
        rs.include(request, response);
        
    }

    

}
