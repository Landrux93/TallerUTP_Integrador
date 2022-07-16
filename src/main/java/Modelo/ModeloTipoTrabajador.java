/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Entidad.TipoTrabajador;
import Entidad.Trabajador;
import Util.MySQLConexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class ModeloTipoTrabajador {
    public ModeloTipoTrabajador(){
    
    }
    //hola alma 
    public List<TipoTrabajador> listaTipoTrabajador(String apellidos) {
    List<TipoTrabajador> lista = new ArrayList<TipoTrabajador>();

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "select * from tipotrabajador";
      pstm = conn.prepareStatement(sql);
      rs = pstm.executeQuery();
      TipoTrabajador tipotrab = null;
      while (rs.next()) {
        tipotrab = new TipoTrabajador();
        tipotrab.setIdtipotrabajador(rs.getString("idtipotrabajador"));
        tipotrab.setTipotrabajador(rs.getString("tipotrabajador"));
        lista.add(tipotrab);
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
    public TipoTrabajador tipoTrabajadorTrab(Trabajador trab1) {
    TipoTrabajador tt= new TipoTrabajador();
    try {
      String sql = "select * from tipotrabajador where idtipotrabajador=?";
      Connection cn = MySQLConexion.getConexion();
      //System.out.println(user + pass);
      CallableStatement st = cn.prepareCall(sql);
      st.setString(1, trab1.getIdtipotrabajador());
      ResultSet rs = st.executeQuery();
      if (rs.next()) {
        tt.setIdrol(rs.getString(3));
        tt.setIdtipotrabajador(rs.getString(1));
        tt.setTipotrabajador(rs.getString(2));
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return tt;
  }
    
}
