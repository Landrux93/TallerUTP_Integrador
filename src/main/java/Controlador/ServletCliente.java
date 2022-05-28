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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;




/**
 *
 * @author landrux
 */
@WebServlet(name = "ServletCliente", urlPatterns = {"/ServletCliente"})
public class ServletCliente extends HttpServlet{
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
            adicion(request, response);
        }
        if (op == 2) {
            anula(request, response);
        }

    }
    


    protected void adicion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Ingreso Servlet");
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
        obj.insertaCliente(a);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    protected void anula(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String coda = request.getParameter("coda");
        String priv = request.getParameter("priv");
        String nombre = request.getParameter("name");
        String cod = request.getParameter("cod");
        request.setAttribute("priv",priv);
        request.setAttribute("name", nombre);     
        request.setAttribute("id", cod);
        obj.eliminaCliente(coda);
        request.getRequestDispatcher("/home.jsp").forward(request, response);

    }

}
