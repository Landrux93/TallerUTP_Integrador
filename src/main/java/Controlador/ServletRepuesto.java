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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;




/**
 *
 * @author landrux
 */
@WebServlet(name = "ServletRepuesto", urlPatterns = {"/ServletRepuesto"})
public class ServletRepuesto extends HttpServlet{
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
            insertarepuesto(request, response);
        }
        if (op == 2) {
            eliminarepuesto(request, response);
        }
        if (op == 3) {
            actualizarepuesto(request, response);
        }

    }
    
    protected void insertarepuesto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Ingreso Servlet");
        Repuesto repuesto= new Repuesto();
               
                repuesto.setNombrerepuesto(request.getParameter("nombrerepuesto"));
                repuesto.setMarcarespuesto(request.getParameter("marcarespuesto"));
                repuesto.setModelorepuesto(request.getParameter("modelorepuesto"));
                repuesto.setSerierepuesto(request.getParameter("serierepuesto"));
                repuesto.setCostorepuesto(Double.parseDouble(request.getParameter("costorepuesto")));
                repuesto.setStock(Integer.parseInt(request.getParameter("stock")));
                 obj.insertaRepuesto(repuesto);
                request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    protected void eliminarepuesto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idrepuesto = request.getParameter("idrepuesto");
        obj.eliminaRepuesto(idrepuesto);
        request.getRequestDispatcher("/item-list.jsp").forward(request, response);

    }
    protected void actualizarepuesto(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        System.out.println("Ingreso Servlet");
        Repuesto repuesto = new Repuesto();
        repuesto.setNombrerepuesto(request.getParameter("nombrerepuesto"));
        repuesto.setMarcarespuesto(request.getParameter("marcarespuesto"));
        repuesto.setModelorepuesto(request.getParameter("modelorepuesto"));
        repuesto.setSerierepuesto(request.getParameter("serierepuesto"));
        repuesto.setCostorepuesto(Double.parseDouble(request.getParameter("costorepuesto")));
        repuesto.setStock(Integer.parseInt(request.getParameter("stock")));
        obj.actualizarepuesto(repuesto);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
