/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.mensajero;

import database.DBCliente;
import database.DBMensajero;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Mensajero;

/**
 *
 * @author kjan
 */
@WebServlet(name = "ActualizarMensajero", urlPatterns = {"/ActualizarMensajero"})
public class ActualizarMensajero extends HttpServlet {

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
        Mensajero c = new Mensajero();
        DBMensajero mensajeroDB = new DBMensajero();
        try {
            c.setK_num_documento(Integer.parseInt(request.getParameter("k_num_documento")));
            c.setK_tipo_documento(request.getParameter("k_tipo_documento"));
            c.setN_primer_nombre(request.getParameter("n_primer_nombre"));
            c.setN_segundo_nombre(request.getParameter("n_segundo_nombre"));
            c.setN_primer_apellido(request.getParameter("n_primer_apellido"));
            c.setN_segundo_apellido(request.getParameter("n_segundo_apellido"));
            c.setK_num_documento(Integer.parseInt(request.getParameter("q_tefefono")));
            c.setO_genero(request.getParameter("o_genero"));
            c.setF_nacimiento(request.getParameter("f_nacimiento"));
            c.setK_num_documento(Integer.parseInt(request.getParameter("q_num_seguridad_social")));
            c.setF_nacimiento(request.getParameter("o_medio_transporte"));
           
           mensajeroDB.actualizarMensajero(c);
           
           response.sendRedirect("listamensajeros.jsp");
        }finally {            
            out.close();
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

}
