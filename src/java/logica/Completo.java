/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author ASUS
 */
public class Completo {
    long k_id_servicio;
    long k_id_tipo_paquete;
    long k_num_documento_usuario;
    String k_tipo_documento_usuario;
    String n_primer_nombre;
    String n_segundo_nombre;
    String n_primer_apellido;
    String n_segundo_apellido;
    String n_tipo;
    String o_descripcion;
    String f_fecha;    
    String f_hora;
    long v_valor_servicio;

    public Completo(long k_id_servicio, long k_num_documento_usuario, String k_tipo_documento_usuario, String n_primer_nombre, String n_segundo_nombre, String n_primer_apellido, String n_segundo_apellido, String n_tipo, String o_descripcion, String f_fecha, String f_hora, long v_valor_servicio) {
        this.k_id_servicio = k_id_servicio;
        this.k_num_documento_usuario = k_num_documento_usuario;
        this.k_tipo_documento_usuario = k_tipo_documento_usuario;
        this.n_primer_nombre = n_primer_nombre;
        this.n_segundo_nombre = n_segundo_nombre;
        this.n_primer_apellido = n_primer_apellido;
        this.n_segundo_apellido = n_segundo_apellido;
        this.n_tipo = n_tipo;
        this.o_descripcion = o_descripcion;
        this.f_fecha = f_fecha;
        this.f_hora = f_hora;
        this.v_valor_servicio = v_valor_servicio;
    }

    public Completo() {
         //To change body of generated methods, choose Tools | Templates.
    }

    public long getK_id_servicio() {
        return k_id_servicio;
    }

    public void setK_id_servicio(long k_id_servicio) {
        this.k_id_servicio = k_id_servicio;
    }

    public long getK_num_documento_usuario() {
        return k_num_documento_usuario;
    }

    public void setK_num_documento_usuario(long k_num_documento_usuario) {
        this.k_num_documento_usuario = k_num_documento_usuario;
    }

    public String getK_tipo_documento_usuario() {
        return k_tipo_documento_usuario;
    }

    public void setK_tipo_documento_usuario(String k_tipo_documento_usuario) {
        this.k_tipo_documento_usuario = k_tipo_documento_usuario;
    }

    public String getN_primer_nombre() {
        return n_primer_nombre;
    }

    public void setN_primer_nombre(String n_primer_nombre) {
        this.n_primer_nombre = n_primer_nombre;
    }

    public String getN_segundo_nombre() {
        return n_segundo_nombre;
    }

    public void setN_segundo_nombre(String n_segundo_nombre) {
        this.n_segundo_nombre = n_segundo_nombre;
    }

    public String getN_primer_apellido() {
        return n_primer_apellido;
    }

    public void setN_primer_apellido(String n_primer_apellido) {
        this.n_primer_apellido = n_primer_apellido;
    }

    public String getN_segundo_apellido() {
        return n_segundo_apellido;
    }

    public void setN_segundo_apellido(String n_segundo_apellido) {
        this.n_segundo_apellido = n_segundo_apellido;
    }

    public String getN_tipo() {
        return n_tipo;
    }

    public void setN_tipo(String n_tipo) {
        this.n_tipo = n_tipo;
    }

    public String getO_descripcion() {
        return o_descripcion;
    }

    public void setO_descripcion(String o_descripcion) {
        this.o_descripcion = o_descripcion;
    }

    public String getF_fecha() {
        return f_fecha;
    }

    public void setF_fecha(String f_fecha) {
        this.f_fecha = f_fecha;
    }

    public String getF_hora() {
        return f_hora;
    }

    public void setF_hora(String f_hora) {
        this.f_hora = f_hora;
    }

    public long getV_valor_servicio() {
        return v_valor_servicio;
    }

    public void setV_valor_servicio(long v_valor_servicio) {
        this.v_valor_servicio = v_valor_servicio;
    }

    public long getK_id_tipo_paquete() {
        return k_id_tipo_paquete;
    }

    public void setK_id_tipo_paquete(long k_id_tipo_paquete) {
        this.k_id_tipo_paquete = k_id_tipo_paquete;
    }

    
    
    
}
