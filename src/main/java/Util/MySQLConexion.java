package Util;
import Entidad.Cliente;
import java.sql.*;
public class MySQLConexion {
	public static Connection getConexion(){ 
		Connection con = null;
		try { 
                Class.forName("com.mysql.cj.jdbc.Driver"); 
		String url = "jdbc:mysql://34.176.117.100/tallerutp"; 
		String usr = "grupo1";
		String psw = "grupo1_2022"; 
		con = DriverManager.getConnection(url,usr,psw); 
		System.out.println("conexion ok");
		} catch (ClassNotFoundException ex)
		{ System.out.println("No hay Driver!!"); } 
		catch (SQLException ex) { System.out.println("Error con la BD "); }
		return con; 
		}
}

