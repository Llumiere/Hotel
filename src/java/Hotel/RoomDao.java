package Hotel;


import Hotel.RoomBean;
import java.sql.*;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ovie
 */
public class RoomDao {
    public List<RoomBean> room(){
        
        String url = "jdbc:mysql://localhost:3306/Hotel";
        String user = "root";
        String password = "password";
        
        List<RoomBean> room = new ArrayList();
        
        try {
             Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");
            
            String query = "SELECT * FROM ROOMS;";
            Statement stmt = con.createStatement();
            
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                RoomBean rb = new RoomBean();
                rb.setId(rs.getInt("RID"));
                rb.setBedType(rs.getString("BedType"));
                rb.setStatus(rs.getString("Status"));
                rb.setDescription(rs.getString("Description"));
                rb.setImages(rs.getString("Images"));
                
                room.add(rb);
            }
            
        } catch (Exception e) {
            
        }
        return room;
    }
    
    public List<Cartsssss> getCartItems(ArrayList<Cartsssss> cartlist) {
        List<Cartsssss> products = new ArrayList<>();
        try {
            
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return products;
    }
    
    
}
