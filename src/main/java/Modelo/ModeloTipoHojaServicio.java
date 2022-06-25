/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Entidad.TipoHojaServicio;
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
public class ModeloTipoHojaServicio {
    public ModeloTipoHojaServicio(){
        
    }
    public List<TipoHojaServicio> listatipoHojaServicio(String tipo) {
    List<TipoHojaServicio> lista = new ArrayList<TipoHojaServicio>();

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "select * from tipohojaservicio";
      pstm = conn.prepareStatement(sql);
      rs = pstm.executeQuery();
      TipoHojaServicio tipohojaserv = null;
      while (rs.next()) {
        tipohojaserv = new TipoHojaServicio();
        tipohojaserv.setIdtiposervicio(rs.getString("idtipohojaservicio"));
        tipohojaserv.setTipohojaservicio(rs.getString("tipohojaservicio"));
        lista.add(tipohojaserv);
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
