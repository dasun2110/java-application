import java.sql.*;

public class Client {
    public static boolean place_order( String name, String NIC, String Project, String landnumber, String street, String city, String district, String province, String landarea, String architect, String engineer, String interiordesigner, String qs, String carpenter, String remarks) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection
                                ("jdbc:mysql://localhost/bt","root","");
                    PreparedStatement ps =(PreparedStatement)con.prepareStatement ("INSERT INTO `orders`(`Name`, `NIC`, `Project_Type`, `Land_Number`, `Street`, `City`, `District`, `Province`, `Land_Area`, `Architect`, `Engineer`, `Interior_Designer`, `Quantity_Surveyor`, `Carpenter`, `Remarks`) VALUES ('"+name+"','"+NIC+"','"+Project+"','"+landnumber+"','"+street+"','"+city+"','"+district+"','"+province+"','"+landarea+"','"+architect+"','"+engineer+"','"+interiordesigner+"','"+qs+"','"+carpenter+"','"+remarks+"')");
                    ps.executeUpdate();  
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
        return st;}
    
    public static boolean register( String gender, String fname, String lname, String E_Mail, String pbn, String str, String cit, String cn, String Password) 
     {boolean st =false;
      try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement ps =(PreparedStatement)con.prepareStatement ("INSERT INTO `register`(`Gender`, `Name`, `NIC`, `E_Mail`, `Post_Box_Number`, `Street`, `City`, `Contact_Number`, `Password`) VALUES ('"+gender+"','"+fname+"','"+lname+"','"+E_Mail+"','"+pbn+"','"+str+"','"+cit+"','"+cn+"','"+Password+"')");
        ps.executeUpdate();
        }catch(ClassNotFoundException | SQLException e) { }
      st = true;
      return st;}
    
    public static boolean send_chat(int number, String Name, String msg, String d, String nic)
     {boolean st =false;
     try{Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection
                        ("jdbc:mysql://localhost/bt","root","");
        PreparedStatement ps =(PreparedStatement)con.prepareStatement ("INSERT INTO "+nic+" (`P`, `Name`, `msg`,`dt`) VALUES ('"+number+"','"+Name+"','"+msg+"','"+d+"')");
        ps.executeUpdate();
        con.close();
        }catch(ClassNotFoundException | SQLException e){}
      st = true;
      return st;}
    
}

