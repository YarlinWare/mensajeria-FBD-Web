/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.servicio;

import database.DBServicio;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Completo;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ConsultarServicioDetallado", urlPatterns = {"/ConsultarServicioDetallado"})
public class ConsultarServicioDetallado extends HttpServlet {

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
        DBServicio servicioDB = new DBServicio();
        Completo c = new Completo();
        PrintWriter out = response.getWriter();
        
        int id_servicio = Integer.parseInt(request.getParameter("id_servicio"));
        int id_tipo_paquete = Integer.parseInt(request.getParameter("id_tipo_paquete"));
        ResultSet res = servicioDB.getServicioDetalladoById(id_servicio, id_tipo_paquete);
            
        try {
            if(res.next()){
                    
                    
                    c.setK_id_servicio(res.getInt("servicioid"));
                    c.setK_id_tipo_paquete(res.getInt("idtipo"));
                    c.setF_fecha(res.getString("fecha"));
                    c.setF_hora(res.getString("hora"));
                    c.setK_num_documento_usuario(res.getInt("numdocumento"));
                    c.setK_tipo_documento_usuario(res.getString("tipodocumento"));
                    c.setN_primer_nombre(res.getString("nombre"));
                    //c.setN_segundo_nombre(res.getString("c.n_segundo_nombre"));
                    c.setN_primer_apellido(res.getString("apellido"));
                    //servicioC.setN_segundo_apellido(res.getString("c.n_segundo_apellido"));
                    c.setN_tipo(res.getString("tipo"));
                    c.setO_descripcion(res.getString("descripcion"));
                    c.setV_valor_servicio(res.getInt("valor"));
            }
            /*out.println("Municipio ["+ servicioC.getK_tipo_documento_usuario()+ "] <br>");
            out.println("Municipio ["+ servicioC.getK_num_documento_usuario()+ "] <br>");
            out.println("Municipio ["+ servicioC.getN_primer_nombre()+ "] <br>");
            out.println("Municipio ["+ servicioC.getN_primer_apellido()+ "] <br>");
            out.println("Municipio ["+ servicioC.getN_tipo()+ "] <br>");*/
            request.getSession().setAttribute("servicio", c);              
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
            Logger.getLogger(ConsultarServicioDetallado.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ConsultarServicioDetallado.class.getName()).log(Level.SEVERE, null, ex);
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
