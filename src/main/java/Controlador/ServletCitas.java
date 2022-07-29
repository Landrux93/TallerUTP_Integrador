/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Entidad.Cita;
import Entidad.Cliente;
import Entidad.TipoCita;
import Modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.omg.CORBA.MARSHAL;

/**
 *
 * @author landrux
 */
public class ServletCitas extends HttpServlet {

  ModeloCita modelocita = new ModeloCita();

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
   * methods.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try ( PrintWriter out = response.getWriter()) {
      /* TODO output your page here. You may use following sample code. */
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet ServletCitas</title>");
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Servlet ServletCitas at " + request.getContextPath() + "</h1>");
      out.println("</body>");
      out.println("</html>");
    }
  }

  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    processRequest(request, response);
  }

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    processRequest(request, response);
  }

  /**
   * Returns a short description of the servlet.
   *
   * @return a String containing servlet description
   */
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

  protected void service(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    int op = Integer.parseInt(request.getParameter("opcion"));
    //String accion = request.getParameter("accion");

    switch (op) {
      case 1:
        LlenarDatos(request, response);
        break;
      case 2:
        insertaCitas(request, response);
        break;
      case 3:
        ListarCitas(request, response);
        break;
      case 4://eliminar citas
        EliminarCitas(request, response);
        break;
      case 41://eliminar citas-lista citas
        EliminarCitasLista(request, response);
        break;
      default:
        throw new AssertionError();
    }

  }

  protected void insertaCitas(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

    Cita cita = new Cita();
    cita.setFechacita(request.getParameter("fecha_inicio"));
    cita.setFechafinalizacion(request.getParameter("fecha_final"));
    cita.setHora(request.getParameter("item_hora"));
    cita.setIdtipocita(request.getParameter("item_tipocita"));
    cita.setIdcliente(request.getParameter("item_cliente"));
    cita.setEstado(request.getParameter("item_estado"));
    ModeloCita modcita = new ModeloCita();
    modcita.insertaCita(cita);
    LlenarDatos(request, response);
  }

  protected void LlenarDatos(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    ModeloCliente cliente = new ModeloCliente();
    ModeloTipoCita tipocita = new ModeloTipoCita();
    ModeloCita cita = new ModeloCita();
    List<Cliente> listacliente = cliente.listaCliente("");
    List<TipoCita> listatipocita = tipocita.listaTipoCita("");
    List<Cita> listacita = cita.listaCita("");
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.setAttribute("listacita", listacita);
    request.setAttribute("listacliente", listacliente);
    request.setAttribute("listatipocita", listatipocita);
    request.getRequestDispatcher("/reservation-new.jsp").forward(request, response);

  }

  protected void EliminarCitas(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    String idcita = request.getParameter("idcita");
    modelocita.eliminaCita(idcita);
    LlenarDatos(request, response);

  }

  protected void EliminarCitasLista(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    String idcita = request.getParameter("idcita");
    modelocita.eliminaCita(idcita);
    request.getRequestDispatcher("/reservation-list.jsp").forward(request, response);

  }

  protected void ListarCitas(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    ModeloCita cita = new ModeloCita();
    List<Cita> listacita = cita.listaCita("");
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.setAttribute("listacita", listacita);
    request.getRequestDispatcher("/reservation-list.jsp").forward(request, response);

  }
}
