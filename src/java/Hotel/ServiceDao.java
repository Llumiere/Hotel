package Hotel;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class ServiceDao {
        public List<ServiceBean> service() {
        String url = "jdbc:mysql://localhost:3306/Hotel";
        String user = "root";
        String password = "password";
        
            List<ServiceBean> serve = new ArrayList<>();


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");

            String query = "SELECT * FROM ROOMS";
            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()){
                ServiceBean row = new ServiceBean();
                row.setId(rs.getInt("RID"));
                row.setBedType(rs.getString("BedType"));
                row.setDescription(rs.getString("Description"));
                row.setStatus(rs.getString("Status"));
                
                serve.add(row);
                
            }
            System.out.println(serve);

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return serve;
    }
    public static void main(String[] args) {
        ServiceDao sd = new ServiceDao();
        sd.service();
    }
    

}
