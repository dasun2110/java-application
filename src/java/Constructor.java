import java.sql.*;

public class Constructor {
    
    public static boolean confirm_order( String Name, String nn, String Project_Type, String Land_Number, String Street, String City, String District, String Province, String Land_Area, String Architect, String Engineer, String Interior_Designer, String Quantity_Surveyor, String Carpenter, String Remarks) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement ps =(PreparedStatement)con.prepareStatement ("INSERT INTO `corders`(`Name`, `NIC`, `Project_Type`, `Land_Number`, `Street`, `City`, `District`, `Province`, `Land_Area`, `Architect`, `Engineer`, `Interior_Designer`, `Quantity_Surveyor`, `Carpenter`, `Remarks`) VALUES ('"+Name+"','"+nn+"','"+Project_Type+"','"+Land_Number+"','"+Street+"','"+City+"','"+District+"','"+Province+"','"+Land_Area+"','"+Architect+"','"+Engineer+"','"+Interior_Designer+"','"+Quantity_Surveyor+"','"+Carpenter+"','"+Remarks+"')");
                    ps.executeUpdate();
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
    public static boolean create_table_chat( String nn) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement pcreate =(PreparedStatement)con.prepareStatement ("create table "+nn+" (P int(11),Name varchar(60),msg varchar(10000), pic longblob, dt varchar(60))");
                    pcreate.executeUpdate();
      }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
    public static boolean delete_table_chat( String num) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement pdel2 =(PreparedStatement)con.prepareStatement ("DROP TABLE "+num+" ");
                    pdel2.executeUpdate();
      }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
    public static boolean decline_order( String Name, String nn, String Project_Type, String Land_Number, String Street, String City, String District, String Province, String Land_Area, String Architect, String Engineer, String Interior_Designer, String Quantity_Surveyor, String Carpenter, String Remarks) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement ps =(PreparedStatement)con.prepareStatement ("INSERT INTO `dorders`(`Name`, `NIC`, `Project_Type`, `Land_Number`, `Street`, `City`, `District`, `Province`, `Land_Area`, `Architect`, `Engineer`, `Interior_Designer`, `Quantity_Surveyor`, `Carpenter`, `Remarks`) VALUES ('"+Name+"','"+nn+"','"+Project_Type+"','"+Land_Number+"','"+Street+"','"+City+"','"+District+"','"+Province+"','"+Land_Area+"','"+Architect+"','"+Engineer+"','"+Interior_Designer+"','"+Quantity_Surveyor+"','"+Carpenter+"','"+Remarks+"')");
                    ps.executeUpdate();
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
}
