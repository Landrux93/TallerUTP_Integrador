/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Entidad.TipoCita;
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
public class ModeloTipoCita {

    public ModeloTipoCita() {
    }
    public List<TipoCita> listaTipoCita(String apellidos) {
    List<TipoCita> lista = new ArrayList<TipoCita>();

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "select * from tipocita";
      pstm = conn.prepareStatement(sql);
      rs = pstm.executeQuery();
      TipoCita tipocita = null;
      while (rs.next()) {
        tipocita = new TipoCita();
        tipocita.setIdtipocita(rs.getString("idtipocita"));
        tipocita.setTipocita(rs.getString("tipocita"));
        lista.add(tipocita);
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
