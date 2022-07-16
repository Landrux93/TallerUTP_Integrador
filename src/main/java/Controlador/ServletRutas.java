/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Entidad.Cita;
import Entidad.Cliente;
import Entidad.Equipo;
import Entidad.HojaServicio;
import Entidad.TipoHojaServicio;
import Entidad.TipoTrabajador;
import Entidad.Trabajador;
import Modelo.ModeloCita;
import Modelo.ModeloCliente;
import Modelo.ModeloEquipo;
import Modelo.ModeloHojaServicio;
import Modelo.ModeloTipoHojaServicio;
import Modelo.ModeloTipoTrabajador;
import Modelo.ModeloTrabajador;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ServletRutas", urlPatterns = {"/ServletRutas"})
public class ServletRutas extends HttpServlet {

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
   * methods.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
    
    ModeloTrabajador modtrabajdor= new ModeloTrabajador();
    ModeloEquipo modequipo= new ModeloEquipo();
    ModeloTipoHojaServicio modtiphojaservicio = new ModeloTipoHojaServicio();
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    try ( PrintWriter out = response.getWriter()) {
      /* TODO output your page here. You may use following sample code. */
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet ServletRutas</title>");
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Servlet ServletRutas at " + request.getContextPath() + "</h1>");
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
    String ruta = request.getParameter("ruta");
    //String accion = request.getParameter("accion");

    switch (ruta) {
      case "home":
        home(request, response);
        break;
      case "clientenew":
        clientenew(request, response);
        break;
      case "clientesearch":
        clientesearch(request, response);
        break;
      case "itemnew":
        itemnew(request, response);
        break;
      case "itemsearch":
        itemsearch(request, response);
        break;
      case "listarTrabajadores":
        listaTrabajadores(request, response);
        break;
      case "registraTrabajador":
        listaTipoTrabajador(request, response);
        break;
      case "usersearch":
        usersearch(request, response);
        break;
      case "reservationnew":
        reservationnew(request, response);
        break;
      case "listarcitas":
        ListarCitas(request, response);
        break;
      case "reservationsearch":
        reservationsearch(request, response);
        break;
      case "reservationpending":
        reservationpending(request, response);
        break;
      case "hojaservicionew":
        hojaservicionew(request, response);
        break;
      case "equiponew":
        equiponew(request, response);
        break;
        
      case "insertahojaservicionew":
          insertahojaservicionew(request, response);
          break;
        
      default:
        throw new AssertionError();
    }

  }

  protected void home(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/home.jsp").forward(request, response);

  }

  protected void clientenew(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/client-new.jsp").forward(request, response);

  }

  protected void clientesearch(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/client-search.jsp").forward(request, response);

  }

  protected void itemnew(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/item-new.jsp").forward(request, response);

  }

  protected void itemsearch(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/item-search.jsp").forward(request, response);

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

  protected void listaTipoTrabajador(HttpServletRequest request, HttpServletResponse response)//Lista tipo de trabajador para registrar
          throws ServletException, IOException {

    ModeloTipoTrabajador tipotrabajador = new ModeloTipoTrabajador();

    List<TipoTrabajador> listatipoTrabajador = tipotrabajador.listaTipoTrabajador("");

    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.setAttribute("listatipotrabajador", listatipoTrabajador);
    request.getRequestDispatcher("/user-new.jsp").forward(request, response);

  }

  protected void listaTrabajadores(HttpServletRequest request, HttpServletResponse response)//Lista tipo de trabajador para registrar
          throws ServletException, IOException {

    ModeloTrabajador trabajadores = new ModeloTrabajador();

    List<Trabajador> listatrabajadores = trabajadores.listaTrabajador("");

    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);

    request.setAttribute("listatrabajadores", listatrabajadores);
    request.getRequestDispatcher("/user-list.jsp").forward(request, response);

  }

  protected void usersearch(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/user-search.jsp").forward(request, response);

  }

  protected void reservationnew(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/reservation-new.jsp").forward(request, response);

  }

  protected void reservationsearch(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/reservation-search.jsp").forward(request, response);

  }

  protected void reservationpending(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/reservation-pending.jsp").forward(request, response);

  }

  protected void hojaservicionew(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    
    List<Trabajador> listatrabajador = modtrabajdor.listaTrabajador("");
    List<TipoHojaServicio> listatipohojaserv = modtiphojaservicio.listatipoHojaServicio("");
    List<Equipo> listaequipo = modequipo.listaEquipos("");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.setAttribute("listacliente", listatrabajador);
    request.setAttribute("listatipohojaserv", listatipohojaserv);
    request.setAttribute("listaequipo", listaequipo);
    request.getRequestDispatcher("/hojaservicionew.jsp").forward(request, response);
    
    

  }
  protected void insertahojaservicionew(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    HojaServicio hoja1= new HojaServicio();
    hoja1.setIdtipohojaservicio(request.getParameter("tipohojaservicio"));
    hoja1.setIdusuario(request.getParameter("usuario"));
    hoja1.setNserie(request.getParameter("numeroserie"));
    hoja1.setDiagnostico(request.getParameter("diagnostico"));
    hoja1.setPagoneto(Double.parseDouble(request.getParameter("pagoneto")));
    hoja1.setIGV(Double.parseDouble((request.getParameter("igv"))));
    ModeloHojaServicio modehs= new ModeloHojaServicio();
    modehs.insertaHojaServicio(hoja1);
    //(request, response);
    request.getRequestDispatcher("/hojaservicionew.jsp").forward(request, response);
    
    

  }

  protected void equiponew(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String id = request.getParameter("id");
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String privilegio = request.getParameter("priv");
    request.setAttribute("id", id);
    request.setAttribute("nombre", nombre);
    request.setAttribute("apellido", apellido);
    request.setAttribute("priv", privilegio);
    request.getRequestDispatcher("/equiponew.jsp").forward(request, response);

  }
}
