/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 *
 * @author rafaell
 */
public class Conectar {
    public static Connection con;
    public static final String driver = "com.mysql.cj.jdbc.Driver";
    public static final String user = "root";
    public static final String password = System.getenv("DB_PASSWORD_HOSPITAL") != null ? System.getenv("DB_PASSWORD_HOSPITAL") : "12345";
    public static final String url = "jdbc:mysql://localhost:3306/citas";
    
   public PreparedStatement ps;
   public ResultSet rs;

   //Método que nos retorna la conexión de la base de datos
    public Connection getConnection(){
        Connection con = null;
        try {
            Class.forName(driver);
            con = (Connection) DriverManager.getConnection(url, user, password);
            
            System.out.println("Conexión establecida");
            
        } catch (Exception e) {
        System.out.println("Error al conectar con la base de datos: "+ e);
        }
        return con;
    }
    
    //Método para desconectar a la base de datos
    public void desconectar(){
        con = null;
        if(con == null){
            System.out.println("Conexión terminada");
        }
    }
}
