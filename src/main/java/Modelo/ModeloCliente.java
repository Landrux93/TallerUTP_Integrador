/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Util.MySQLConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Entidad.*;
/**
 *
 * @author landrux
 */
public class ModeloCliente {
    
    public ModeloCliente() {
    }

    public List<Cliente> listaCliente(String apellidos) {
        List<Cliente> lista = new ArrayList<Cliente>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "select * from CLIENTE";
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            Cliente cliente = null;
            while (rs.next()) {
                cliente = new Cliente();
                cliente.setIdcliente(rs.getString("idcliente"));
                cliente.setDni(rs.getInt("dni"));
                cliente.setNombrecliente(rs.getString("nombrecliente"));
                cliente.setApellidopaternocliente(rs.getString("apellidopaternocliente"));
                cliente.setNcelularescliente(rs.getString("ncelularescliente"));
                lista.add(cliente);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lista;
    }

    public int insertaCliente(Cliente cliente) {
        int salida = -1;

        Connection conn = null;
        PreparedStatement pstm = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call agregarcliente(?,?,?,?,?,?,?,?,?)}";
            pstm = conn.prepareCall(sql);
            
            pstm.setInt(1, cliente.getDni());   
            pstm.setString(2, cliente.getNombrecliente());
            pstm.setString(3, cliente.getApellidopaternocliente());
            pstm.setString(4, cliente.getApellidomaternocliente());
            pstm.setString(5, cliente.getNcelularescliente());
            pstm.setString(6, cliente.getCorreocliente());
            pstm.setString(7, cliente.getFechanacimientocliente());
            pstm.setString(8, cliente.getDireccion());
            pstm.setString(9, cliente.getContrasenacliente());
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

    public void eliminaCliente(String a) {
        try {

            Connection conn = MySQLConexion.getConexion();
            String sql = "delete from CLIENTE where idcliente = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, a);
            pstm.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}
