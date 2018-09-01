import java.sql.*;

public class Validation {
    static String g,r,n;
    
    public static boolean val(String E_Mail,String Password) 
     { boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM owner WHERE E_Mail=? AND Password=?");
         ps.setString(1, E_Mail);
         ps.setString(2, Password);
                ResultSet rs =ps.executeQuery();
         st = rs.next();}catch(Exception e){ e.printStackTrace();}
       return st; }   
     
     public static boolean valCH(String E_Mail,String Password) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM ch WHERE E_Mail=? AND Password=?");
         ps.setString(1, E_Mail);
         ps.setString(2, Password);
                ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e) { e.printStackTrace(); }
       return st; }   
     
    public static boolean checkUser(String E_Mail,String Password) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM register WHERE E_Mail=? AND Password=?");
         ps.setString(1, E_Mail);
         ps.setString(2, Password);
         ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e) {e.printStackTrace();}
         return st;}   
     
    public static boolean checkUserNIC(String NIC) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM register WHERE NIC=?");
         ps.setString(1, NIC);
         ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e){ e.printStackTrace();}
         return st; }   
    
    public static boolean checkUserEmail(String E_Mail) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM register WHERE E_Mail=?");
         ps.setString(1, E_Mail);
         ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e){ e.printStackTrace();}
         return st; }   
    
    public static boolean checkUserPassword(String Password) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM register WHERE Password=?");
         ps.setString(1, Password);
         ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e){ e.printStackTrace();}
         return st; }   
    
    public static boolean check(String Gender, String Name, String NIC) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM register WHERE Gender=? AND Name=? AND NIC=?");
         ps.setString(1, Gender);
         ps.setString(2, Name);
         ps.setString(3, NIC);
         ResultSet rs =ps.executeQuery();
         st = rs.next();}catch(Exception e){e.printStackTrace();}
         return st; }   
    
    public static boolean checkUserC(String NIC) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM corders WHERE NIC=?");
         ps.setString(1, NIC);
         ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e){ e.printStackTrace(); }
         return st; }   
    
    public static boolean checkUserO(String NIC) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM orders WHERE NIC=?");
         ps.setString(1, NIC);
         ResultSet rs =ps.executeQuery();
         st = rs.next(); }catch(Exception e){ e.printStackTrace();}
         return st; }   
     
     public static boolean checkUserD(String NIC) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
         PreparedStatement ps =(PreparedStatement)con.prepareStatement("SELECT * FROM dorders WHERE NIC=?");
         ps.setString(1, NIC);
         ResultSet rs =ps.executeQuery();
         st = rs.next();}catch(Exception e){e.printStackTrace(); }
         return st; }   
    
     
     
}
