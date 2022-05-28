/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

/**
 *
 * @author landrux
 */
public class Cliente {
    private String idcliente;
    private int dni;
    private String nombrecliente;
    private String apellidopaternocliente;
    private String apellidomaternocliente;
    private String ncelularescliente;
    private String correocliente;
    private String fechanacimientocliente;
    private String direccion;
    private String contrasenacliente;

    public Cliente() {
    }

    public Cliente(String idcliente, int dni, String nombrecliente, String apellidopaternocliente, String apellidomaternocliente, String ncelularescliente, String correocliente, String fechanacimientocliente, String direccion, String contrasenacliente) {
        this.idcliente = idcliente;
        this.dni = dni;
        this.nombrecliente = nombrecliente;
        this.apellidopaternocliente = apellidopaternocliente;
        this.apellidomaternocliente = apellidomaternocliente;
        this.ncelularescliente = ncelularescliente;
        this.correocliente = correocliente;
        this.fechanacimientocliente = fechanacimientocliente;
        this.direccion = direccion;
        this.contrasenacliente = contrasenacliente;
    }

    public String getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(String idcliente) {
        this.idcliente = idcliente;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getNombrecliente() {
        return nombrecliente;
    }

    public void setNombrecliente(String nombrecliente) {
        this.nombrecliente = nombrecliente;
    }

    public String getApellidopaternocliente() {
        return apellidopaternocliente;
    }

    public void setApellidopaternocliente(String apellidopaternocliente) {
        this.apellidopaternocliente = apellidopaternocliente;
    }

    public String getApellidomaternocliente() {
        return apellidomaternocliente;
    }

    public void setApellidomaternocliente(String apellidomaternocliente) {
        this.apellidomaternocliente = apellidomaternocliente;
    }

    public String getNcelularescliente() {
        return ncelularescliente;
    }

    public void setNcelularescliente(String ncelularescliente) {
        this.ncelularescliente = ncelularescliente;
    }

    public String getCorreocliente() {
        return correocliente;
    }

    public void setCorreocliente(String correocliente) {
        this.correocliente = correocliente;
    }

    public String getFechanacimientocliente() {
        return fechanacimientocliente;
    }

    public void setFechanacimientocliente(String fechanacimientocliente) {
        this.fechanacimientocliente = fechanacimientocliente;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getContrasenacliente() {
        return contrasenacliente;
    }

    public void setContrasenacliente(String contrasenacliente) {
        this.contrasenacliente = contrasenacliente;
    }
    
    
    
    
}
