/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import logica.Servicio;

/**
 *
 * @author kjan
 */
public class DBServicio {
    
     DBConexion cn;
    
    public DBServicio() {
        cn = new DBConexion();
    }
    public ResultSet getServicioById(int k_id_servicio,int k_id_tipo_paquete) throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement(" "
                + " SELECT k_id_servicio,"
                + " k_id_tipo_paquete, "
                + " k_num_documento_usuario, "
                + " k_tipo_documento_usuario, "
                + " k_num_documento_mensajero, "
                + " k_tipo_documento_mensajero, "
                + " f_fecha,"
                + " f_hora,"
                + " v_valor_servicio"
                + " FROM servicio "
                + " WHERE  k_id_servicio = ? AND k_id_tipo_paquete = ?");
       
        pstm.setInt(1,k_id_servicio);
        pstm.setInt(2,k_id_tipo_paquete);  
        ResultSet res = pstm.executeQuery();
        /*
         res.close();	
         */
        return res;
    }
    
    public ResultSet getServicioDetalladoById(int k_id_servicio,int k_id_tipo_paquete) throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement(" "
                + " SELECT s.k_id_servicio, c.k_num_documento, c.k_tipo_documento," 
                + "        c.n_primer_nombre, c.n_primer_apellido,"
                + "        t.n_tipo, t.o_descripcion, s.f_fecha, s.f_hora,"
                + "        s.v_valor_servicio, t.k_id_tipo_paquete "
                + " FROM servicio AS s, "
                + "      cliente AS c,"
                + "      tipo_paquete AS t"
                + " WHERE s.k_num_documento_usuario = c.k_num_documento" 
                + "      AND s.k_id_servicio= ?"
                + "      AND s.k_id_tipo_paquete = ?"
                + "      AND t.k_id_tipo_paquete = s.k_id_tipo_paquete");       
        pstm.setInt(1,k_id_servicio);
        pstm.setInt(2,k_id_tipo_paquete);  
        ResultSet res = pstm.executeQuery();
        /*
         res.close();	
         */
        return res;
    }
    
    public ResultSet getServicio() throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement(" "
                + " SELECT * FROM servicio "
                + " ORDER BY k_tipo_documento, k_num_documento");
        ResultSet res = pstm.executeQuery();
        return res;
    }
  
    public void insertarServicio(Servicio s) {
        
        Date date = new Date();
        //DateFormat hourdateFormat = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("INSERT INTO servicio ("
                    + "k_id_tipo_paquete,"
                    + " k_num_documento_usuario,"
                    + " k_tipo_documento_usuario,"
                    + " k_num_documento_mensajero,"
                    + " k_tipo_documento_mensajero,"
                    + " f_fecha,"
                    + " f_hora,"
                    + " v_valor_servicio)"
                    + " values(?,?,?,?,?,?,?,?)");
            pstm.setLong(1, s.getK_id_tipo_paquete());
            pstm.setLong(2, s.getK_num_documento_usuario());
            pstm.setString(3, s.getK_tipo_documento_usuario());
            pstm.setLong(4, s.getK_num_documento_mensajero());
            pstm.setString(5, s.getK_tipo_documento_mensajero());
            pstm.setString(6, s.getF_fecha());
            pstm.setString(7, s.getF_hora());
            pstm.setLong(8, s.getV_valor_servicio());
            

            pstm.executeUpdate();


        } catch (SQLException e) {
            System.out.println(e);
        }

    }
    
     public void actualizarServicio(Servicio s) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("UPDATE servicio"
                    + " SET "
                    + " k_num_documento_mensajero= ? "
                    + " k_tipo_documento_mensajero= ? "
                    + " f_fecha= ? "
                    + " f_hora= ? "
                    + " v_valor_servicio= ? "
                    + " WHERE  k_id_servicio = ? AND k_id_tipo_paquete = ? ");
            pstm.setLong(1, s.getK_num_documento_mensajero());
            pstm.setString(2, s.getK_tipo_documento_mensajero());
            pstm.setString(3, s.getF_fecha());
            pstm.setString(4, s.getF_hora());
            pstm.setLong(5, s.getV_valor_servicio());
            pstm.setLong(6, s.getK_id_servicio());
            pstm.setLong(7, s.getK_id_tipo_paquete());
            
            pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }
     public void borrarServicio(Servicio s) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("DELETE FROM cliente "
                    + "WHERE  k_id_servicio = ? AND k_id_tipo_paquete = ?");

             pstm.setLong(1, s.getK_id_servicio());
             pstm.setLong(2, s.getK_id_tipo_paquete());

            pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }


    }
     public String getMensaje() {
        return cn.getMensaje();
    }
}
    

