/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Entidad.HojaServicio;
import Entidad.Trabajador;
import Modelo.ModeloHojaServicio;
import Modelo.ModeloTrabajador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ServletHojaServicio", urlPatterns = {"/ServletHojaServicio"})
public class ServletHojaServicio extends HttpServlet {

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
            out.println("<title>Servlet ServletHojaServicio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletHojaServicio at " + request.getContextPath() + "</h1>");
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
            insertaHojaServicio(request, response);
            break;
            case 2:
            //listaTrabajador(request, response);
            break;
        default:
            throw new AssertionError();
    }
        
  }
protected void insertaHojaServicio(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    
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
    //request.getRequestDispatcher("/reservation-new.jsp").forward(request, response);
    //(request, response);
  }
}
