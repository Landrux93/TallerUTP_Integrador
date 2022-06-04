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
public class ModeloRepuesto {
    
    public ModeloRepuesto() {
    }

    public List<Repuesto> listaRepuesto(String nombrerepuesto) {
        List<Repuesto> lista = new ArrayList<Repuesto>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "select * from repuesto";
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            Repuesto repuesto= null;
            while (rs.next()) {
                 repuesto= new Repuesto();
               // trabajador.setIdcliente(rs.getString("idcliente"));
                repuesto.setIdrepuesto(rs.getString("idrepuesto"));
                repuesto.setNombrerepuesto(rs.getString("nombrerepuesto"));
                repuesto.setMarcarespuesto(rs.getString("marcarespuesto"));
                repuesto.setModelorepuesto(rs.getString("modelorepuesto"));
                repuesto.setSerierepuesto(rs.getString("serierepuesto"));
                repuesto.setCostorepuesto(rs.getDouble("costorepuesto"));
                repuesto.setStock(rs.getInt("stock"));
                lista.add(repuesto);
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

    public int insertaRepuesto(Repuesto repuesto) {
        int salida = -1;

        Connection conn = null;
        PreparedStatement pstm = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call agregarrepuesto(?,?,?,?,?,?,?)}";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, repuesto.getIdrepuesto());
            pstm.setString(2, repuesto.getNombrerepuesto());
            pstm.setString(3, repuesto.getMarcarespuesto());
            pstm.setString(4, repuesto.getModelorepuesto());
            pstm.setString(5, repuesto.getSerierepuesto());
            pstm.setDouble(6, repuesto.getCostorepuesto());
            pstm.setInt(7, repuesto.getStock());
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

    public void eliminaRepuesto(String a) {
        try {

            Connection conn = MySQLConexion.getConexion();
            String sql = "delete from repuesto where idrepuesto = ?"; //AQUI FALTA
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, a);
            pstm.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    
        public void actualizarepuesto(Repuesto repuesto) {
        try {

            Connection conn = MySQLConexion.getConexion();
            String sql = "update repuesto set idrepuesto = ?, nombrerepuesto=?, marcarepuesto=? ,modelorepuesto=?, "
                    + "serierepuesto=?, costorepuesto=?, stock=? where idrepuesto = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, repuesto.getIdrepuesto());
            pstm.setString(2, repuesto.getNombrerepuesto());
            pstm.setString(3, repuesto.getMarcarespuesto());
            pstm.setString(4, repuesto.getModelorepuesto());
            pstm.setString(5, repuesto.getSerierepuesto());
            pstm.setDouble(6, repuesto.getCostorepuesto());
            pstm.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    
    
}
