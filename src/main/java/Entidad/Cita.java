package Entidad;

import java.util.*;

/**
 * 
 */
public class Cita {

    /**
     * Default constructor
     */
    public Cita() {
    }

    /**
     * 
     */
    private String idcita;

    /**
     * 
     */
    private String idtipocita;

    /**
     * 
     */
    private String fechacita;

    /**
     * 
     */
    private String fechafinalizacion;
    
    private String hora;

   

    /**
     * 
     */
    private String estado;

    /**
     * 
     */
    private String idcliente;

    
     public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }
    public String getIdcita() {
        return idcita;
    }

    public void setIdcita(String idcita) {
        this.idcita = idcita;
    }

    public String getIdtipocita() {
        return idtipocita;
    }

    public void setIdtipocita(String idtipocita) {
        this.idtipocita = idtipocita;
    }

    public String getFechacita() {
        return fechacita;
    }

    public void setFechacita(String fechacita) {
        this.fechacita = fechacita;
    }

    public String getFechafinalizacion() {
        return fechafinalizacion;
    }

    public void setFechafinalizacion(String fechafinalizacion) {
        this.fechafinalizacion = fechafinalizacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(String idcliente) {
        this.idcliente = idcliente;
    }

}