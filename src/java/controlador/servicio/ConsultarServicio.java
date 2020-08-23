/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.servicio;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Servicio;
import database.DBServicio;

/**
 *
 * @author ASUS
 */
public class ConsultarServicio extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        Servicio s = new Servicio();
        DBServicio servicioDB = new DBServicio();
        PrintWriter out = response.getWriter();
        
        int id_servicio = Integer.parseInt(request.getParameter("id_servicio"));
        int id_tipo_paquete = Integer.parseInt(request.getParameter("id_tipo_paquete"));
        ResultSet res = servicioDB.getServicioById(id_servicio, id_tipo_paquete);
            
        try {
            if (res.next()){
                s.setK_id_servicio(Integer.parseInt(request.getParameter("k_id_servicio")));
                s.setK_id_tipo_paquete(Integer.parseInt(request.getParameter("k_id_tipo_paquete")));
                int doc_usuario = (Integer.parseInt(request.getParameter("k_num_documento_usuario")));
                s.setK_num_documento_usuario(doc_usuario);
                s.setK_tipo_documento_usuario(request.getParameter("k_tipo_documento_usuario"));
                if (request.getParameter("k_num_documento_mensajero") != "") {                    
                    int doc_mensajero = Integer.parseInt(request.getParameter("k_num_documento_mensajero"));
                    s.setK_num_documento_mensajero(doc_mensajero);
                    s.setK_tipo_documento_mensajero(request.getParameter("k_tipo_documento_mensajero"));
                }
                s.setF_fecha(request.getParameter("f_fecha"));
                s.setF_hora(request.getParameter("f_hora"));
                s.setV_valor_servicio(Integer.parseInt(request.getParameter("k_tipo_documento_mensajero")));
                
            }            
            request.getSession().setAttribute("servicio", s);          
            response.sendRedirect("resultadobusqueda.jsp");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ConsultarServicio.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ConsultarServicio.class.getName()).log(Level.SEVERE, null, ex);
        }
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
