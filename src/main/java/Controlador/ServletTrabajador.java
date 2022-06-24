/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Entidad.Cita;
import Entidad.Trabajador;
import Modelo.ModeloCita;
import Modelo.ModeloTrabajador;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author landrux
 */
public class ServletTrabajador extends HttpServlet {

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
   * methods.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
    
    ModeloTrabajador ModT= new ModeloTrabajador();
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try ( PrintWriter out = response.getWriter()) {
      /* TODO output your page here. You may use following sample code. */
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet ServletTrabajador</title>");      
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Servlet ServletTrabajador at " + request.getContextPath() + "</h1>");
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
            int op = Integer.parseInt(request.getParameter("opciontrab"));
        //String accion = request.getParameter("accion");
        
        switch (op) {
            case 1:
            insertaTrabajador(request, response);
            break;
            case 2:
            listaTrabajador(request, response);
            break;
        default:
            throw new AssertionError();
    }
        
  }
protected void insertaTrabajador(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    
    Trabajador trab1= new Trabajador();
    trab1.setIdtipotrabajador(request.getParameter("tipotrabajador"));
    trab1.setNombretrabajador(request.getParameter("trabajador_nombre"));
    trab1.setApellidopaternotrabajador(request.getParameter("trabajador_apepat"));
    trab1.setApellidomaternotrabajador(request.getParameter("trabajador_apemat"));
    trab1.setCelularestrabajador(request.getParameter("trabajador_telefono"));
    trab1.setCorreotrabajador(request.getParameter("trabajador_correo1"));
    trab1.setContrasenatrabajador(request.getParameter("trabajador_passwd"));
    ModeloTrabajador modtrab= new ModeloTrabajador();
    ModT.insertaTrabajador(trab1);
    //(request, response);
    //request.getRequestDispatcher("/reservation-new.jsp").forward(request, response);
    listaTrabajador(request, response);
  }

protected void listaTrabajador(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    
        ModeloTrabajador modeloTrab= new ModeloTrabajador();
        List<Trabajador> listaTrabajador= modeloTrab.listaTrabajador("");
        
        request.setAttribute("listatrabajadores", listaTrabajador);
        request.getRequestDispatcher("/user-list.jsp").forward(request, response);
  }
}
