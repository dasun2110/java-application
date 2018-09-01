

import java.io.IOException;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.ResultSet;

@MultipartConfig(maxFileSize = 16177215)
@WebServlet(name = "Send_pic", urlPatterns = {"/Send_pic"})
public class Send_pic extends HttpServlet {
 static String r,g,Name,n;
 private static final int BUFFER_SIZE = 4096;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
         HttpSession session = request.getSession(false);
        g = (String) session.getAttribute("g");
        r = (String) session.getAttribute("r");
        n = (String) session.getAttribute("n");
        Name = g + r ; 
        java.util.Date date = new java.util.Date();
        String d = date.toString();
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        
        try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         
        PreparedStatement psp =(PreparedStatement)con.prepareStatement ("INSERT INTO "+n+" (`P`, `Name`, `pic`,`dt`) VALUES ('0','"+Name+"','"+inputStream+"','"+d+"')");


            
        psp.executeUpdate();
        con.close();
        }catch(ClassNotFoundException | SQLException e){}
        
        Name = null; 
       response.sendRedirect("chatC.jsp");
               
    }
}