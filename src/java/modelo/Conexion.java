/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author wilso
 */
public class Conexion {
       public Connection getConnection(){
    String url = "jdbc:mysql://localhost:3306/simotor";
    String user = "root";
    String pass = "";
    Connection con = null;
    
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("Conectado");
        } catch (Exception e) {
            System.out.println("Error conexion: "+e.getMessage());
        }
    return con;
    }
}
