import java.sql.*;

public class Project {
    
    public static boolean delete_from_dorders( String n) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
                    PreparedStatement pdel =(PreparedStatement)con.prepareStatement ("DELETE FROM `dorders` WHERE `NIC`=? ");
                    pdel.setString(1, n);
                    pdel.executeUpdate();  
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
    public static boolean delete_from_orders( String nn) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
                    PreparedStatement pdel =(PreparedStatement)con.prepareStatement ("DELETE FROM `orders` WHERE `NIC`=? ");
                    pdel.setString(1, nn);
                    pdel.executeUpdate(); 
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
     public static boolean delete_from_corders( String nic) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
                    PreparedStatement pdel1 =(PreparedStatement)con.prepareStatement ("DELETE FROM `corders` WHERE `NIC`=? ");
                    pdel1.setString(1, nic);
                    pdel1.executeUpdate();
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
}
