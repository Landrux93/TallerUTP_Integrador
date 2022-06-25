package Entidad;

import java.util.*;

/**
 * 
 */
public class HojaServicio {

    /**
     * Default constructor
     */
    public HojaServicio() {
    }

    /**
     * 
     */
    private String idhojaservicio;

    /**
     * 
     */
    private String idtipohojaservicio;

    /**
     * 
     */
    private String idusuario;

    /**
     * 
     */
    private String nserie;

    /**
     * 
     */
    private String diagnostico;

    /**
     * 
     */
    private double pagoneto;

    /**
     * 
     */
    private double IGV ;

    public String getIdhojaservicio() {
        return idhojaservicio;
    }

    public void setIdhojaservicio(String idhojaservicio) {
        this.idhojaservicio = idhojaservicio;
    }

    public String getIdtipohojaservicio() {
        return idtipohojaservicio;
    }

    public void setIdtipohojaservicio(String idtipohojaservicio) {
        this.idtipohojaservicio = idtipohojaservicio;
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getNserie() {
        return nserie;
    }

    public void setNserie(String nserie) {
        this.nserie = nserie;
    }

    public String getDiagnostico() {
        return diagnostico;
    }

    public void setDiagnostico(String diagnostico) {
        this.diagnostico = diagnostico;
    }

    public double getPagoneto() {
        return pagoneto;
    }

    public void setPagoneto(double pagoneto) {
        this.pagoneto = pagoneto;
    }

    public double getIGV() {
        return IGV;
    }

    public void setIGV(double IGV) {
        this.IGV = IGV;
    }

}