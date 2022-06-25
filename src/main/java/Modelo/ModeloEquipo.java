/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Entidad.Equipo;
import Util.MySQLConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class ModeloEquipo {

    public ModeloEquipo(){
        
    }
    
    public List<Equipo> listaEquipos(String tipo) {
    List<Equipo> lista = new ArrayList<Equipo>();

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "select * from equipo";
      pstm = conn.prepareStatement(sql);
      rs = pstm.executeQuery();
      Equipo equipo = null;
      while (rs.next()) {
        equipo = new Equipo();
        equipo.setNserie(rs.getString("nserie"));
        equipo.setIdtipoequipo(rs.getString("idtipoequipo"));
        equipo.setMarca(rs.getString("marca"));
        equipo.setModelo(rs.getString("modelo"));
        equipo.setDetallesequipo(rs.getString("detallesequipo"));
        equipo.setIdcliente(rs.getString("idcliente"));
        lista.add(equipo);
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
}
