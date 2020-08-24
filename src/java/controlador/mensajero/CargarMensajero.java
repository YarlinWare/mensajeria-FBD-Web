/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.mensajero;

import database.DBMensajero;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
@WebServlet(name = "CargarMensajero", urlPatterns = {"/CargarMensajero"})
public class CargarMensajero extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        Mensajero c = new Mensajero();
        DBMensajero mensajeroDB = new DBMensajero();
        try  {
            int num_doc = Integer.parseInt(request.getParameter("num_doc"));
            String tipo_doc = request.getParameter("tipo_doc");
            String opc = request.getParameter("opc");
            out.write(opc);
            ResultSet res = mensajeroDB.getMensajeroById(num_doc, tipo_doc);
             if (res.next()){
                c.setK_num_documento(res.getInt("k_num_documento"));
                c.setK_tipo_documento(res.getString("k_tipo_documento"));
                c.setN_primer_nombre(res.getString("n_primer_nombre"));
                c.setN_segundo_nombre(res.getString("n_segundo_nombre"));
                c.setN_primer_apellido(res.getString("n_primer_apellido"));
                c.setN_segundo_apellido(res.getString("n_segundo_apellido"));
                c.setQ_tefefono(res.getString("q_tefefono"));
                c.setO_genero(res.getString("o_genero"));
                c.setF_nacimiento(res.getString("f_nacimiento"));
                c.setD_dir(res.getString("d_dir"));   
                c.setQ_num_seguridad_social(res.getInt("q_num_seguridad_social"));
                c.setO_medio_transporte(res.getString("o_medio_transporte"));
               
                
            }
            if(opc.equals("edit")){
                request.getSession().setAttribute("mensajero", c);
                response.sendRedirect("editarmensajero.jsp"); 
            }
            if(opc.equals("delete")){
                //clienteDB.borrarCliente(c);
                mensajeroDB.borrarMensajero(num_doc, tipo_doc);
                response.sendRedirect("listamensajero.jsp");
            }
            
        }catch(Exception e){
            
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
