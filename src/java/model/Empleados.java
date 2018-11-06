
package model;

import java.io.Serializable;

public class Empleados implements Serializable{
    private String cod_empleado;
    private String nombres;
    private String appaterno;
    private String apmaterno;
    private float fono;
    private String email;
    private String cod_tipoempleado;
    private String usuario;
    private String clave;
    private String estado;

        public Empleados() {
        this.nombres = "";
        this.appaterno = "";
        this.apmaterno = "";
        this.fono = 0;
        this.email = "";
        this.cod_tipoempleado = "";
        this.usuario = "";
        this.clave = "";
        this.estado = "";
    }

    public Empleados(String nombres, String appaterno, String apmaterno, float fono, String email, String cod_tipoempleado, String usuario, String clave, String estado) {
        this.nombres = nombres;
        this.appaterno = appaterno;
        this.apmaterno = apmaterno;
        this.fono = fono;
        this.email = email;
        this.cod_tipoempleado = cod_tipoempleado;
        this.usuario = usuario;
        this.clave = clave;
        this.estado = estado;
    }

        
    public String getCod_empleado() {
        return cod_empleado;
    }

    public void setCod_empleado(String cod_empleado) {
        this.cod_empleado = cod_empleado;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getAppaterno() {
        return appaterno;
    }

    public void setAppaterno(String appaterno) {
        this.appaterno = appaterno;
    }

    public String getApmaterno() {
        return apmaterno;
    }

    public void setApmaterno(String apmaterno) {
        this.apmaterno = apmaterno;
    }

    public float getFono() {
        return fono;
    }

    public void setFono(float fono) {
        this.fono = fono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCod_tipoempleado() {
        return cod_tipoempleado;
    }

    public void setCod_tipoempleado(String cod_tipoempleado) {
        this.cod_tipoempleado = cod_tipoempleado;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
  
    
        
    
}
