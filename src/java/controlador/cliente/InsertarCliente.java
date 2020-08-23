/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.cliente;

import database.DBCliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Cliente;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "InsertarCliente", urlPatterns = {"/InsertarCliente"})
public class InsertarCliente extends HttpServlet {

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
        Cliente c = new Cliente();
        DBCliente clienteDB = new DBCliente();
        try {
            
            /*long K_num_documento=(Integer.parseInt(request.getParameter("num_documento")));
            String K_tipo_documento=(request.getParameter("tipo_documento"));
            String N_primer_nombre=(request.getParameter("primer_nombre"));
            String N_segundo_nombre=(request.getParameter("segundo_nombre"));
            String N_primer_apellido=(request.getParameter("primer_apellido"));
            String N_segundo_apellido=(request.getParameter("segundo_apellido"));
            String O_genero=(request.getParameter("genero"));
            String F_nacimiento=(request.getParameter("nacimiento"));
            String N_correo=(request.getParameter("correo"));*/
            
            
            
            /*c.setK_num_documento(K_num_documento);
            c.setK_tipo_documento(K_tipo_documento);
            c.setN_primer_nombre(N_primer_nombre);
            c.setN_segundo_nombre(N_segundo_nombre);
            c.setN_primer_apellido(N_primer_apellido);
            c.setN_segundo_apellido(N_segundo_apellido);
            c.setO_genero(O_genero);
            c.setF_nacimiento(F_nacimiento);
            c.setN_correo(N_correo);*/
            c.setK_num_documento(234435);
            c.setK_tipo_documento("CE");
            c.setN_primer_nombre("nombre 1");
            c.setN_segundo_nombre("nombre 2");
            c.setN_primer_apellido("apellido 1");
            c.setN_segundo_apellido("apellido 2");
            c.setO_genero("genero");
            //c.setF_nacimiento("2012-12-20");
            c.setN_correo("nombre@gmail.com");
            
            clienteDB.insertarCliente(c);            
            response.sendRedirect("listaclientes.jsp");
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
