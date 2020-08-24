
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
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "CrearServicio", urlPatterns = {"/CrearServici"})
public class CrearServicio extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        Servicio c = new Servicio();
        DBServicio servicioDB = new DBServicio();
        try  {
            int id_servicio = Integer.parseInt(request.getParameter("id_servicio"));
            int id_tipo_servicio = Integer.parseInt(request.getParameter("id_tipo_servicio"));
            String opc = request.getParameter("opc");
            out.write(opc);
            ResultSet res = servicioDB.getServicioById(id_servicio,id_tipo_servicio);
            if (res.next()){
                c.setK_num_documento_usuario(res.getInt("k_num_documento_usuario"));
                c.setK_tipo_documento_usuario(res.getString("k_tipo_documento_usuario"));
                c.setK_num_documento_mensajero(res.getInt("k_num_documento_mensajero"));
                c.setK_tipo_documento_mensajero(res.getString("k_tipo_documento_mensajero"));
                c.setK_id_servicio(res.getInt("k_id_servicio"));
                c.setK_id_tipo_paquete(res.getInt("k_id_tipo_paquete"));
                c.setF_fecha(res.getString("f_fecha"));
                c.setF_hora(res.getString("f_hora"));
                c.setV_valor_servicio(res.getInt("v_valor_servicio"));    
                
            }
            /*if(opc.equals("Aceptar")){
                request.getSession().setAttribute("servicio", c);
                response.sendRedirect("solicitarservicio.jsp"); 
            }
            */
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
