/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexionBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author kelly
 */
public class ConexionMYSQL {
    
    private static final String URL = "jdbc:mysql://localhost:3306/vehiculos";
    
     private static final String USER = "root";
    
      private static final String PASSWORD = "";
    
      
      public static Connection obtenerConexion() throws ClassNotFoundException, SQLException{
    
             Class.forName("org.mariadb.jdbc.Driver");
             
             
             return DriverManager.getConnection(URL, USER, PASSWORD);
    
}    
}
