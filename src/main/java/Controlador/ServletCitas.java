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

/**
 *
 * @author landrux
 */
public class ServletCitas extends HttpServlet {

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
        if (op == 1) {
          LlenarDatos(request, response);
        }
        
  }

protected void inserta(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    Cliente a = new Cliente();
    a.setDni(Integer.parseInt(request.getParameter("dni")));
    a.setNombrecliente(request.getParameter("nombre"));
    a.setApellidopaternocliente(request.getParameter("apellidopa"));
    a.setApellidomaternocliente(request.getParameter("apellidoma"));
    a.setNcelularescliente(request.getParameter("celular"));
    a.setCorreocliente(request.getParameter("correo"));
    a.setFechanacimientocliente(request.getParameter("nacimiento"));
    a.setDireccion(request.getParameter("direccion"));
    a.setContrasenacliente(request.getParameter("contrasena"));
  }
protected void LlenarDatos(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        ModeloCliente cliente= new ModeloCliente();
        ModeloTipoCita tipocita = new ModeloTipoCita();
        ModeloCita cita= new ModeloCita();
        List<Cliente> listacliente= cliente.listaCliente("");
        List<TipoCita> listatipocita= tipocita.listaTipoCita("");
        List<Cita> listacita= cita.listaCita("");
        
        for (TipoCita cita1 : listatipocita) {
            System.out.println(cita1.getTipocita()+"-----okkkk");
        }
        
        request.setAttribute("listacita", listacita);
        request.setAttribute("listacliente", listacliente);
        request.setAttribute("listatipocita", listatipocita);
        request.getRequestDispatcher("/reservation-new.jsp").forward(request, response);

        
    }
}
