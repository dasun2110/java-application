import java.sql.*;

public class Guest {
    public static boolean external_message(String Name, String Email, String Subject, String Message)
    {boolean st =false;
        try{ Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement ps =(PreparedStatement)con.prepareStatement ("INSERT INTO `guest`(`Name`, `Email`, `Subject`, `Message`) VALUES ('"+Name+"','"+Email+"','"+Subject+"','"+Message+"')");
        ps.executeUpdate();
        }catch(ClassNotFoundException | SQLException e){}
        st = true;
        return st;}   
    
    public static boolean delete_all()
    {boolean st =false;
        try{Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root",""); 
                PreparedStatement p = (PreparedStatement)con.prepareStatement("TRUNCATE TABLE guest");            
                p.executeUpdate();
        }catch(ClassNotFoundException | SQLException e){}
        st = true;
        return st;}   
}
