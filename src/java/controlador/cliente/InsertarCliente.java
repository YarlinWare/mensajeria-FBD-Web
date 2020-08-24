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
          try{                
                c.setK_num_documento(Integer.parseInt(request.getParameter("num_documento")));
                c.setK_tipo_documento(request.getParameter("tipo_documento"));
                c.setN_primer_nombre(request.getParameter("primer_nombre"));
                c.setN_segundo_nombre(request.getParameter("segundo_nombre"));
                c.setN_primer_apellido(request.getParameter("primer_apellido"));
                c.setN_segundo_apellido(request.getParameter("segundo_apellido"));
                c.setO_genero(request.getParameter("genero"));
                c.setF_nacimiento(request.getParameter("nacimiento"));
                c.setN_correo(request.getParameter("correo"));
            
                clienteDB.insertarCliente(c);
                out.println("Numero documento ["+ c.getK_num_documento()+"] <br>");
                out.println("Tipo de documento ["+ c.getK_tipo_documento()+ "] <br>");
                out.println("Primer nombre ["+ c.getN_primer_nombre()+ "] <br>");
                out.println("Primer apellido ["+ c.getN_primer_apellido()+ "] <br>");
                
                //response.sendRedirect("listaclientes.jsp");
            }
            catch(NumberFormatException e ){
                out.println("Numero documento ["+ c.getK_num_documento()+"] <br>");
                out.println("Tipo de documento ["+ c.getK_tipo_documento()+ "] <br>");
                out.println("Primer nombre ["+ c.getN_primer_nombre()+ "] <br>");
                out.println("Primer apellido ["+ c.getN_primer_apellido()+ "] <br>");;
            }
            catch(Exception e1){
                out.println("Numero documento ["+ c.getK_num_documento()+"] <br>");
                out.println("Tipo de documento ["+ c.getK_tipo_documento()+ "] <br>");
                out.println("Primer nombre ["+ c.getN_primer_nombre()+ "] <br>");
                out.println("Primer apellido ["+ c.getN_primer_apellido()+ "] <br>");
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
