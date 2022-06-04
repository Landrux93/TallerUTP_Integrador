package Entidad;

import java.util.*;

/**
 * 
 */
public class Repuesto {

    /**
     * Default constructor
     */
    public Repuesto() {
    }

 

    private String idrepuesto;

    
    private String nombrerepuesto;


    private String marcarespuesto;


    private String modelorepuesto;


    private String serierepuesto;


    private double costorepuesto;


    private int stock;

    public Repuesto(String idrepuesto, String nombrerepuesto, String marcarespuesto, String modelorepuesto, String serierepuesto, double costorepuesto, int stock) {
        this.idrepuesto = idrepuesto;
        this.nombrerepuesto = nombrerepuesto;
        this.marcarespuesto = marcarespuesto;
        this.modelorepuesto = modelorepuesto;
        this.serierepuesto = serierepuesto;
        this.costorepuesto = costorepuesto;
        this.stock = stock;
    }

    public String getIdrepuesto() {
        return idrepuesto;
    }

    public void setIdrepuesto(String idrepuesto) {
        this.idrepuesto = idrepuesto;
    }

    public String getNombrerepuesto() {
        return nombrerepuesto;
    }

    public void setNombrerepuesto(String nombrerepuesto) {
        this.nombrerepuesto = nombrerepuesto;
    }

    public String getMarcarespuesto() {
        return marcarespuesto;
    }

    public void setMarcarespuesto(String marcarespuesto) {
        this.marcarespuesto = marcarespuesto;
    }

    public String getModelorepuesto() {
        return modelorepuesto;
    }

    public void setModelorepuesto(String modelorepuesto) {
        this.modelorepuesto = modelorepuesto;
    }

    public String getSerierepuesto() {
        return serierepuesto;
    }

    public void setSerierepuesto(String serierepuesto) {
        this.serierepuesto = serierepuesto;
    }

    public double getCostorepuesto() {
        return costorepuesto;
    }

    public void setCostorepuesto(double costorepuesto) {
        this.costorepuesto = costorepuesto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    

}