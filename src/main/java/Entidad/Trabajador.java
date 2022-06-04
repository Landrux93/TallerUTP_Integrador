package Entidad;

import java.util.*;

/**
 * 
 */
public class Trabajador {

    /**
     * Default constructor
     */
    public Trabajador() {
    }

    private String idtrabajador;


    private String idtipotrabajador;

    private String nombretrabajador;


    private String apellidopaternotrabajador;
    
    private String apellidomaternotrabajador;

    private String celularestrabajador;

    private String correotrabajador;

    private String contrasenatrabajador;
    
    
    

    public Trabajador(String idtrabajador, String idtipotrabajador, String nombretrabajador, String apellidopaternotrabajador, String apellidomaternotrabajador, String celularestrabajador, String correotrabajador, String contrasenatrabajador) {
        this.idtrabajador = idtrabajador;
        this.idtipotrabajador = idtipotrabajador;
        this.nombretrabajador = nombretrabajador;
        this.apellidopaternotrabajador = apellidopaternotrabajador;
        this.apellidomaternotrabajador = apellidomaternotrabajador;
        this.celularestrabajador = celularestrabajador;
        this.correotrabajador = correotrabajador;
        this.contrasenatrabajador = contrasenatrabajador;
    }
   

    public String getIdtrabajador() {
        return idtrabajador;
    }

    public void setIdtrabajador(String idtrabajador) {
        this.idtrabajador = idtrabajador;
    }

    public String getIdtipotrabajador() {
        return idtipotrabajador;
    }

    public void setIdtipotrabajador(String idtipotrabajador) {
        this.idtipotrabajador = idtipotrabajador;
    }

    public String getNombretrabajador() {
        return nombretrabajador;
    }

    public void setNombretrabajador(String nombretrabajador) {
        this.nombretrabajador = nombretrabajador;
    }

    public String getApellidopaternotrabajador() {
        return apellidopaternotrabajador;
    }

    public void setApellidopaternotrabajador(String apellidopaternotrabajador) {
        this.apellidopaternotrabajador = apellidopaternotrabajador;
    }

    public String getApellidomaternotrabajador() {
        return apellidomaternotrabajador;
    }

    public void setApellidomaternotrabajador(String apellidomaternotrabajador) {
        this.apellidomaternotrabajador = apellidomaternotrabajador;
    }

    public String getCelularestrabajador() {
        return celularestrabajador;
    }

    public void setCelularestrabajador(String celularestrabajador) {
        this.celularestrabajador = celularestrabajador;
    }

    public String getCorreotrabajador() {
        return correotrabajador;
    }

    public void setCorreotrabajador(String correotrabajador) {
        this.correotrabajador = correotrabajador;
    }

    public String getContrasenatrabajador() {
        return contrasenatrabajador;
    }

    public void setContrasenatrabajador(String contrasenatrabajador) {
        this.contrasenatrabajador = contrasenatrabajador;
    }

}