/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Entidad.*;
import Modelo.ModeloLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author landrux
 */
public class ServletLogin extends HttpServlet {

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
      out.println("<title>Servlet ServletLogin</title>");
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Servlet ServletLogin at " + request.getContextPath() + "</h1>");
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
    int op = Integer.parseInt(request.getParameter("opc"));
    //String accion = request.getParameter("accion");

    switch (op) {
      case 1:
        verificar(request, response);
        break;
      default:
        throw new AssertionError();
    }

  }

  protected void verificar(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    ModeloLogin obj = new ModeloLogin();
    String user = request.getParameter("usuario");
    String pass = request.getParameter("clave");
    String privclientes = "TR0000";
    String error = "Usuario o clave incorrecta";
    if (obj.logincliente(user, pass).getNombrecliente() == null) {
      if (obj.logintrabajdor(user, pass).getNombretrabajador() == null) {
        request.setAttribute("dato", error);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
      } else {
        request.setAttribute("id", obj.logintrabajdor(user, pass).getIdtrabajador());
        request.setAttribute("nombre", obj.logintrabajdor(user, pass).getNombretrabajador());
        request.setAttribute("apellido", obj.logintrabajdor(user, pass).getApellidopaternotrabajador());
        request.setAttribute("priv", obj.logintrabajdor(user, pass).getIdtipotrabajador());
        request.getRequestDispatcher("/home.jsp").forward(request, response);
      }
    }
    else {
        request.setAttribute("id", obj.logincliente(user, pass).getIdcliente());
        request.setAttribute("nombre", obj.logincliente(user, pass).getNombrecliente());
        request.setAttribute("apellido", obj.logincliente(user, pass).getApellidopaternocliente());
        request.setAttribute("priv", privclientes);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
      }
  }
}