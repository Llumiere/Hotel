
import java.sql.*;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ovie
 */
public class RegDao {
    public static int save(RegBean reg) {
        String url = "jdbc:mysql://localhost:3306/Hotel";
        String user = "root";
        String password = "password";
        
        int status = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");
            
            String query = "INSERT INTO Customers ( Firstname, Lastname, Username,Email, Password) VALUES(?,?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, reg.getFirstname());
            ps.setString(2, reg.getLastname());
            ps.setString(3, reg.getUsername());
            ps.setString(4, reg.getEmail());
            ps.setString(5, reg.getPassword());
            
            status = ps.executeUpdate();
            
            
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return status;
        
    }
    
    
}
