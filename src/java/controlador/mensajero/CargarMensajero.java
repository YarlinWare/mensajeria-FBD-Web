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
                c.setK_tipo_documento("k_tipo_documento");
                c.getN_primer_nombre();
                
            }
            if(opc.equals("edit")){
                request.getSession().setAttribute("mensajero", c);
                response.sendRedirect("actualizarmensajero.jsp");
            }
            if(opc.equals("delete")){
                mensajeroDB.borrarMensajero(c);
                response.sendRedirect("listamensajeros.jsp");
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
