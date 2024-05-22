
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ovie
 */
class BookRoom {
    public void addcart(int id){
         String url = "jdbc:mysql://localhost:3306/Hotel";
        String user = "root";
        String password = "password";
        
        try {
//             Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");
            System.out.println(id);
            
            String query = "INSERT INTO CART(BedType, RID, Quantity) VALUES"+
                            "((SELECT BedType  FROM ROOMS WHERE RID =?), (SELECT RID  FROM ROOMS WHERE RID =?), 1);";
                           
           PreparedStatement ps = con.prepareStatement(query);
           ps.setInt(1, id);
           ps.setInt(2, id);
            ps.executeUpdate();
            
        }catch(SQLException e){
            System.out.println(e);
        } 
            
    }
    
}
