package Util;
import Entidad.Cliente;
import java.sql.*;
public class MySQLConexion {
	public static Connection getConexion(){ 
		Connection con = null;
		try { 
                Class.forName("com.mysql.jdbc.Driver"); 
		String url = "jdbc:mysql://34.176.117.100/tallerutp1"; 
		String usr = "grupo1";
		String psw = "grupo1_2022"; 
		con = DriverManager.getConnection(url,usr,psw); 
		System.out.println("conexion ok");
		} catch (ClassNotFoundException ex)
		{ System.out.println("No hay Driver!!"); } 
		catch (SQLException ex) { System.out.println("Error con la BD "); }
		return con; 
		}
        public static int insertaCliente(Cliente cliente) {
        int salida = -1;

        Connection conn = null;
        PreparedStatement pstm = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "";
            pstm = conn.prepareCall(sql);
            pstm.setString(1, cliente.getIdcliente());
            pstm.setInt(2, cliente.getDni());
            pstm.setString(3, cliente.getNombrecliente());
            pstm.setString(4, cliente.getApellidopaternocliente());
            pstm.setString(5, cliente.getApellidomaternocliente());
            pstm.setString(6, cliente.getNcelularescliente());
            pstm.setString(7, cliente.getCorreocliente());
            pstm.setString(8, cliente.getFechanacimientocliente());
            pstm.setString(9, cliente.getDireccion());
            pstm.setString(10, cliente.getContrasenacliente());
            salida = pstm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }
        return salida;
    }
}

