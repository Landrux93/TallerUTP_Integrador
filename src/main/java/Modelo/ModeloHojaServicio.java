/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import Entidad.Cita;
import Entidad.HojaServicio;
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
public class ModeloHojaServicio {
     public ModeloHojaServicio() {
    } 
    
    public List<HojaServicio> listaHojaServicio(String apellidos) {
    List<HojaServicio> lista = new ArrayList<HojaServicio>();

    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "SELECT cita.idcita,tipocita.tipocita, cita.fechacita,cita.fechafinalizacion,cita.estado,cita.hora,cliente.nombrecliente FROM cita INNER JOIN tipocita ON cita.idtipocita= tipocita.idtipocita INNER JOIN cliente ON cita.idcliente= cliente.idcliente";
      pstm = conn.prepareStatement(sql);
      rs = pstm.executeQuery();
      HojaServicio hojaservicio = null;
      while (rs.next()) {
        hojaservicio = new HojaServicio();
        hojaservicio.setIdhojaservicio(rs.getString("idhojaservicio"));
        hojaservicio.setIdtipohojaservicio(rs.getString("idtipohojaservicio"));
        hojaservicio.setIdusuario(rs.getString("idusuario"));
        hojaservicio.setNserie(rs.getString("nserie"));
        hojaservicio.setDiagnostico(rs.getString("diagnostico"));
        hojaservicio.setPagoneto(Double.parseDouble(rs.getString("pagoneto")));
        hojaservicio.setIGV(Double.parseDouble(rs.getString("IGV")));
        lista.add(hojaservicio);
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
public int insertaHojaServicio(HojaServicio hojaservicio) {
    int salida = -1;

    Connection conn = null;
    PreparedStatement pstm = null;
    try {
      conn = MySQLConexion.getConexion();
      String sql = "{call agregarHojaServicio(?,?,?,?,?,?)}";
      pstm = conn.prepareCall(sql);

      //pstm.setString(1, cita.getIdcita());
      pstm.setString(1, hojaservicio.getIdhojaservicio());
      pstm.setString(2, hojaservicio.getIdtipohojaservicio());
      pstm.setString(3, hojaservicio.getIdusuario());
      pstm.setString(4, hojaservicio.getNserie());
      pstm.setString(5, hojaservicio.getDiagnostico());
      pstm.setDouble(6, hojaservicio.getPagoneto());
      pstm.setDouble(7, hojaservicio.getIGV());
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
