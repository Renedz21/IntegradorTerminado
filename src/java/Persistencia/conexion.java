/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
