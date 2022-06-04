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
public class ModeloTrabajador {
    
    public ModeloTrabajador() {
    }

    public List<Trabajador> listaTrabajador(String apellidos) {
        List<Trabajador> lista = new ArrayList<Trabajador>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "select * from TRABAJADOR";
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            Trabajador trabajador= null;
            while (rs.next()) {
                trabajador = new Trabajador();
               // trabajador.setIdcliente(rs.getString("idcliente"));
                trabajador.setIdtrabajador(rs.getString("idtrabajador"));
                trabajador.setIdtipotrabajador(rs.getString("idtipotrabajador"));
                trabajador.setNombretrabajador(rs.getString("nombretrabajador"));
                trabajador.setApellidopaternotrabajador(rs.getString("apellidopaternotrabajador"));
                trabajador.setApellidomaternotrabajador(rs.getString("apellidomaternotrabajador"));
                trabajador.setCelularestrabajador(rs.getString("celularestrabajador"));
                trabajador.setCorreotrabajador(rs.getString("correotrabajador"));
                trabajador.setContrasenatrabajador(rs.getString("contrasenatrabajador"));
                lista.add(trabajador);
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

    public int insertaTrabajador(Trabajador trabajador) {
        int salida = -1;

        Connection conn = null;
        PreparedStatement pstm = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call agregartrabajador(?,?,?,?,?,?,?,?)}";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, trabajador.getIdtrabajador());
            pstm.setString(2, trabajador.getIdtipotrabajador());
            pstm.setString(3, trabajador.getNombretrabajador());
            pstm.setString(4, trabajador.getApellidopaternotrabajador());
            pstm.setString(5, trabajador.getApellidomaternotrabajador());
            pstm.setString(6, trabajador.getCelularestrabajador());
            pstm.setString(7, trabajador.getCorreotrabajador());
            pstm.setString(8, trabajador.getContrasenatrabajador());
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

    public void eliminaTrabajador(String a) {
        try {

            Connection conn = MySQLConexion.getConexion();
            String sql = "delete from TRABAJADOR where idcliente = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, a);
            pstm.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    
        public Trabajador busca(String nombretrabajador) {
        Trabajador trabajador = null;
        try {
            Connection conn = MySQLConexion.getConexion();
            String sql = "SELECT idtrabajador, idtipotrabajador, nombretrabajador, apellidopaternotrabajador,"
                    + "apellidomaternotrabajador, celularestrabajador,correotrabajador,contrasena FROM TRABAJADOR WHERE nombretrabajador=?";
            //preparar una instruccion para ejecutar el sql
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, nombretrabajador);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                trabajador = new Trabajador();
                trabajador.setIdtrabajador(rs.getString(1));
                trabajador.setIdtipotrabajador(rs.getString(2));
                trabajador.setNombretrabajador(rs.getString(3));
                trabajador.setApellidopaternotrabajador(rs.getString(4));
                trabajador.setApellidomaternotrabajador(rs.getString(5));
                trabajador.setCelularestrabajador(rs.getString(6));
                trabajador.setCorreotrabajador(rs.getString(7));
                trabajador.setContrasenatrabajador(rs.getString(8));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return trabajador;
    }

        public void actualiza(Trabajador trabajador) {
        try {

            Connection conn = MySQLConexion.getConexion();
            String sql = "update TRABAJADOR set nombretrabajador=?, apellidopaternotrabajador=?,apellidomaternotrabajador=? where idtrabajador = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);
                      
            pstm.setString(1, trabajador.getIdtrabajador());
            pstm.setString(2, trabajador.getIdtipotrabajador());
            pstm.setString(3, trabajador.getNombretrabajador());
            pstm.setString(4, trabajador.getApellidopaternotrabajador());
            pstm.setString(5, trabajador.getApellidomaternotrabajador());
            pstm.setString(6, trabajador.getCelularestrabajador());
            pstm.setString(7, trabajador.getCorreotrabajador());
            pstm.setString(8, trabajador.getContrasenatrabajador());
            pstm.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
        
        
    
}
