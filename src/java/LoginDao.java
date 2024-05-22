import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {

     int result;
     String role;

    public  int validator(String cuser, String cpass) {
        String url = "jdbc:mysql://localhost:3306/Hotel";
        String user = "root";
        String password = "password";
        


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, user, password);
            System.out.println("Connect Succeeded");

            String query = "SELECT * FROM Users WHERE username ='" + cuser + "' AND Password = '" + cpass + "'";
            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()){
                System.out.println(rs.getString("Role"));
                role = rs.getString("Role");
            }
            
            if(role == null){
            return 2;
            }
            else if(role.equalsIgnoreCase("admin")){
            return 1;
            }
            else{
            return 0;
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
        return result;
    }
    public static void main(String[] args) {
        LoginDao ld = new LoginDao();
//        System.out.println(ld.validator("Light", "light123"));
        System.out.println(ld.validator("Fikky", "fikky909"));
    }

}
