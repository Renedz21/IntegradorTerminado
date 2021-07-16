package Persistencia;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Microsoft
 */
public class conexion {
    Connection con;
    String url = "jdbc:mysql://localhost:3306/basedatosproyectointegrador";
    String usser = "root";
    String pass = "";

    public Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, usser, pass);
        } catch (Exception e) {
            
        }
        return con;
    }
    
}
