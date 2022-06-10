/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Entidad.Cita;
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
public class ModeloCita {
     public ModeloCita() {
    } 
    
    public List<Cita> listaCita(String apellidos) {
    List<Cita> lista = new ArrayList<Cita>();

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "select * from cita";
      pstm = conn.prepareStatement(sql);
      rs = pstm.executeQuery();
      Cita cita = null;
      while (rs.next()) {
        cita = new Cita();
        cita.setIdcita(rs.getString("idcita"));
        cita.setIdtipocita(rs.getString("idtipocita"));
        cita.setFechacita(rs.getString("fechacita"));
        cita.setFechafinalizacion(rs.getString("fechafinalizacion"));
        cita.setEstado(rs.getString("estado"));
        cita.setHora(rs.getString("hora"));
        cita.setIdcliente(rs.getString("idcliente"));
        lista.add(cita);
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

   

  public int insertaCita(Cita cita) {
    int salida = -1;

    Connection conn = null;
    PreparedStatement pstm = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "{call agregarcita(?,?,?,?,?,?,?)}";
      pstm = conn.prepareCall(sql);

      pstm.setString(1, cita.getIdcita());
      pstm.setString(2, cita.getIdtipocita());
      pstm.setString(3, cita.getFechacita());
      pstm.setString(4, cita.getFechafinalizacion());
      pstm.setString(5, cita.getEstado());
      pstm.setString(6, cita.getHora());
      pstm.setString(7, cita.getIdcliente());
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

  public void eliminaCita(String a) {
    try {

      Connection conn = MySQLConexion.getConexion();
      String sql = "delete from cita where idcita = ?";
      PreparedStatement pstm = conn.prepareStatement(sql);
      pstm.setString(1, a);
      pstm.executeUpdate();
    } catch (Exception ex) {
      ex.printStackTrace();
    }

  }

  public void modificaCita(Cita cita) {
    try {
      PreparedStatement pstm = null;
      Connection conn = MySQLConexion.getConexion();
      String sql = "{call modificacita(?,?,?,?,?,?)}";
      pstm = conn.prepareCall(sql);
      pstm.setString(1, cita.getIdcita());
      pstm.setString(2, cita.getIdtipocita());
      pstm.setString(3, cita.getFechacita());
      pstm.setString(4, cita.getFechafinalizacion());
      pstm.setString(5, cita.getEstado());
      pstm.setString(6, cita.getIdcliente());
      pstm.executeUpdate();
    } catch (Exception ex) {
      ex.printStackTrace();
    }

  }

  public Cita busca(String codigo) {
    Cita cita = null;
    try {
      Connection cn = MySQLConexion.getConexion();
      String sql = "call buscacita(?)";
      PreparedStatement st = cn.prepareCall(sql);
      st.setString(1, codigo);
      ResultSet rs = st.executeQuery();
      if (rs.next()) {
        cita = new Cita();
        cita.setIdcita(rs.getString(1));
        cita.setIdtipocita(rs.getString(2));
        cita.setFechacita(rs.getString(3));
        cita.setFechafinalizacion(rs.getString(4));
        cita.setEstado(rs.getString(5));
        cita.setIdcliente(rs.getString(6));
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return cita;
  }
}
