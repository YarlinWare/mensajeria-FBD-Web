/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import logica.Cliente;

/**
 *
 * @author kjan
 */
public class DBCliente {
    DBConexion cn;
    
    public DBCliente() {
        cn = new DBConexion();
    }
    public ResultSet getClienteById(long k_num_documento,String k_tipo_documento) throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement(" "
                + "SELECT * FROM cliente "
                + "WHERE  k_num_documento = ? AND k_tipo_documento = ?");
       
        pstm.setLong(1, k_num_documento);
        pstm.setString(2, k_tipo_documento);
        

        ResultSet res = pstm.executeQuery();
        /*
         res.close();	
         */

        return res;
    }
    public ResultSet getCliente() throws SQLException {
        PreparedStatement pstm = cn.getConexion().prepareStatement(" "
                + " SELECT * FROM cliente "
                + " ORDER BY k_tipo_documento, k_num_documento");
        ResultSet res = pstm.executeQuery();
        return res;
    }
  
    public void insertarCliente(Cliente c) {
        
        Date date = new Date();
        DateFormat hourdateFormat = new SimpleDateFormat("yyyy/MM/dd");
        String dia = Integer.toString(c.get(Calendar.DATE));
        String mes = Integer.toString(c.get(Calendar.MONTH));
        String annio = Integer.toString(c.get(Calendar.YEAR));
        String fecha = annio+"-"+mes+":"+dia;
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("INSERT INTO cliente ("
                    + " k_num_documento,"
                    + " k_tipo_documento,"
                    + " n_primer_nombre,"
                    + " n_segundo_nombre,"
                    + " n_primer_apellido,"
                    + " n_segundo_apellido,"
                    + " o_genero,"
                    + " n_correo ,"
                    //+ "f_nacimiento "
                    + " values(?,?,?,?,?,?,?,?)");
            
            pstm.setLong(1, c.getK_num_documento());
            pstm.setString(2, c.getK_tipo_documento());
            pstm.setString(3, c.getN_primer_nombre());
            pstm.setString(4, c.getN_segundo_nombre());
            pstm.setString(5, c.getN_primer_apellido());
            pstm.setString(6, c.getN_segundo_apellido());
            pstm.setString(7, c.getO_genero());
            pstm.setString(8, c.getN_correo());
            //pstm.setString(9, c.getF_nacimiento());
            //pstm.setString(9, fecha);           

            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }
    
     public void actualizarCliente(Cliente c) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("UPDATE cliente"
                    + " SET "
                    + " n_primer_nombre= ?, "
                    + " n_segundo_nombre= ?, "
                    + " n_primer_apellido= ?,"
                    + " n_segundo_apellido= ?,"
                    + " o_genero= ?, "
                    + " n_correo= ? "
                    //+ " f_nacimiento= ? "
                    + " WHERE  k_num_documento = ? AND k_tipo_documento = ?");
            pstm.setString(1, c.getN_primer_nombre());
            pstm.setString(2, c.getN_segundo_nombre());
            pstm.setString(3, c.getN_primer_apellido());
            pstm.setString(4, c.getN_segundo_apellido());
            pstm.setString(5, c.getO_genero());
            pstm.setString(6, c.getN_correo());
            //pstm.setString(1, c.getF_nacimiento());
            pstm.setLong(7, c.getK_num_documento());
            pstm.setString(8, c.getK_tipo_documento());
            
            pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }
     public void borrarCliente(Cliente c) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("DELETE FROM cliente "
                    + "WHERE  k_num_documento = ? AND k_tipo_documento = ?");

            pstm.setLong(1, c.getK_num_documento());
            pstm.setString(2, c.getK_tipo_documento());

            pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }


    }
     
     public void borrarCliente(long k_num_documento,String k_tipo_documento) {

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("DELETE FROM cliente "
                    + "WHERE  k_num_documento = ? AND k_tipo_documento = ?");

            pstm.setLong(1, k_num_documento);
            pstm.setString(2, k_tipo_documento);

            pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }


    }
     public String getMensaje() {
        return cn.getMensaje();
    }
}
