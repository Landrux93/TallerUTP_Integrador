/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import Entidad.*;
import Util.MySQLConexion;

/**
 *
 * @author landrux
 */
public class ModeloLogin {

  public ModeloLogin() {
  }

  
  public Cliente logincliente(String user, String pass) {
    Cliente c = new Cliente();
    try {
      String sql = "{call logincliente(?,?)}";
      Connection cn = MySQLConexion.getConexion();
      CallableStatement st = cn.prepareCall(sql);
      st.setString(1, user);
      st.setString(2, pass);
      ResultSet rs = st.executeQuery();
      if (rs.next()) {
        c.setIdcliente(rs.getString(1));
        c.setNombrecliente(rs.getString(3));
        c.setApellidopaternocliente(rs.getString(4));
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return c;
  }
  
    public Trabajador logintrabajdor(String user, String pass) {
    Trabajador t = new Trabajador();
    try {
      String sql = "{call logintrabajador(?,?)}";
      Connection cn = MySQLConexion.getConexion();
      System.out.println(user + pass);
      CallableStatement st = cn.prepareCall(sql);
      st.setString(1, user);
      st.setString(2, pass);
      ResultSet rs = st.executeQuery();
      if (rs.next()) {
        t.setIdtrabajador(rs.getString(1));
        t.setNombretrabajador(rs.getString(3));
        t.setApellidopaternotrabajador(rs.getString(4));
        t.setIdtipotrabajador(rs.getString(2));
      }
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return t;
  }
}
