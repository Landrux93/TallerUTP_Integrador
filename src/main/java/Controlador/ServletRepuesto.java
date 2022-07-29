/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;
import Entidad.*;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 *
 * @author landrux
 */
@WebServlet(name = "ServletRepuesto", urlPatterns = {"/ServletRepuesto"})
public class ServletRepuesto extends HttpServlet {

  ModeloRepuesto obj = new ModeloRepuesto();

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
      out.println("<title>Servlet ServletRepuesto</title>");
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Servlet ServletRepuesto at " + request.getContextPath() + "</h1>");
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
    if (op == 1) {
      inserta(request, response);
    }
    if (op == 2) {
      elimina(request, response);
    }
    if (op == 3) {
      modifica(request, response);
    }
    if (op == 4) {
      lista(request, response);
    }
    if (op == 5) {
      edita(request, response);
    }

  }

  protected void inserta(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    System.out.println("Ingreso Servlet");
    Repuesto repuesto = new Repuesto();
    repuesto.setNombrerepuesto(request.getParameter("nombre"));
    repuesto.setMarcarespuesto(request.getParameter("marca"));
    repuesto.setModelorepuesto(request.getParameter("modelo"));
    repuesto.setSerierepuesto(request.getParameter("serie"));
    repuesto.setCostorepuesto(Double.parseDouble(request.getParameter("costo")));
    repuesto.setStock(Integer.parseInt(request.getParameter("stock")));
    obj.insertaRepuesto(repuesto);
       
    
    lista(request, response);
  }

  protected void elimina(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String codigo = request.getParameter("codigo");
    obj.eliminaRepuesto(codigo);
   
    lista(request, response);

  }

  protected void modifica(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    System.out.println("Ingreso Servlet");
    Repuesto repuesto = new Repuesto();
    repuesto.setIdrepuesto(request.getParameter("codigo"));
    repuesto.setNombrerepuesto(request.getParameter("nombre"));
    repuesto.setMarcarespuesto(request.getParameter("marca"));
    repuesto.setModelorepuesto(request.getParameter("modelo"));
    repuesto.setSerierepuesto(request.getParameter("serie"));
    repuesto.setCostorepuesto(Double.parseDouble(request.getParameter("costo")));
    repuesto.setStock(Integer.parseInt(request.getParameter("stock")));
    obj.modificarepuesto(repuesto);
        
    lista(request, response);
  }
  
  protected void lista(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    ModeloRepuesto repuesto = new ModeloRepuesto();
    List<Repuesto> lista = repuesto.listaRepuesto("");
    request.setAttribute("listaRepuesto", lista);
    request.getRequestDispatcher("/item-list.jsp").forward(request, response);
  }

  protected void edita(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String coda = request.getParameter("codigo");
    request.setAttribute("id", coda);
    
    request.setAttribute("repuesto", obj.busca(coda));
    request.getRequestDispatcher("/item-update.jsp").forward(request, response);

  }
}
