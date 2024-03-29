/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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
import Mail.Mail;

/**
 *
 * @author landrux
 */
@WebServlet(name = "ServletCliente", urlPatterns = {"/ServletCliente"})
public class ServletCliente extends HttpServlet {

  ModeloCliente obj = new ModeloCliente();

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
      out.println("<title>Servlet ServletCliente</title>");
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Servlet ServletCliente at " + request.getContextPath() + "</h1>");
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
    Cliente a = new Cliente();
    a.setDni(Integer.parseInt(request.getParameter("dni")));
    a.setNombrecliente(request.getParameter("nombrec"));
    a.setApellidopaternocliente(request.getParameter("apellidopa"));
    a.setApellidomaternocliente(request.getParameter("apellidoma"));
    a.setNcelularescliente(request.getParameter("celular"));
    a.setCorreocliente(request.getParameter("correo"));
    a.setFechanacimientocliente(request.getParameter("nacimiento"));
    a.setDireccion(request.getParameter("direccion"));
    a.setContrasenacliente(request.getParameter("contrasena"));
    Mail mailregister= new Mail();
    mailregister.sendMain(request.getParameter("correo"),"Mensaje de Bienvenida", "Bienbenido al Taller UTP");
    obj.insertaCliente(a);
    
    lista(request, response);
  }

  protected void elimina(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String codigo = request.getParameter("codigo");
    request.setAttribute("id", codigo);
    obj.eliminaCliente(codigo);
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    lista(request, response);

  }

  protected void modifica(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    Cliente a = new Cliente();
    a.setIdcliente(request.getParameter("codigo"));
    a.setDni(Integer.parseInt(request.getParameter("dni")));
    a.setNombrecliente(request.getParameter("nombre"));
    a.setApellidopaternocliente(request.getParameter("apellidopa"));
    a.setApellidomaternocliente(request.getParameter("apellidoma"));
    a.setNcelularescliente(request.getParameter("celular"));
    a.setCorreocliente(request.getParameter("correo"));
    a.setFechanacimientocliente(request.getParameter("nacimiento"));
    a.setDireccion(request.getParameter("direccion"));
    a.setContrasenacliente(request.getParameter("contrasena"));
    obj.modificaCliente(a);
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    lista(request, response);
  }

  protected void lista(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    ModeloCliente cliente = new ModeloCliente();
    List<Cliente> lista = cliente.listaCliente("");
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.setAttribute("clientes", lista);
    request.getRequestDispatcher("/client-list.jsp").forward(request, response);
  }

  protected void edita(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String coda = request.getParameter("codigo");
    request.setAttribute("id", coda);
    request.setAttribute("cliente", obj.busca(coda));
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/client-update.jsp").forward(request, response);

  }
}
