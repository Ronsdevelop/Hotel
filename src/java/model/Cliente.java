/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.Serializable;
/**
 *
 * @author Rony
 */
public class Cliente implements Serializable{
    private String cod_cliente;
    private String nombres;
    private String appaterno;
    private String apmaterno;
    private String direccion;
    private int fono;
    private String email;
    private int dni;
    private String estado;

    public Cliente() {
        this.cod_cliente = "";
        this.nombres = "";
        this.appaterno = "";
        this.apmaterno = "";
        this.direccion = "";
        this.fono = 0;
        this.email = "";
        this.dni = 0;
        this.estado = "";
    }

    public Cliente(String cod_cliente, String nombres, String appaterno, String apmaterno, String direccion, int fono, String email, int dni, String estado) {
        this.cod_cliente = cod_cliente;
        this.nombres = nombres;
        this.appaterno = appaterno;
        this.apmaterno = apmaterno;
        this.direccion = direccion;
        this.fono = fono;
        this.email = email;
        this.dni = dni;
        this.estado = estado;
    }

    public String getCod_cliente() {
        return cod_cliente;
    }

    public void setCod_cliente(String cod_cliente) {
        this.cod_cliente = cod_cliente;
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

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public float getFono() {
        return fono;
    }

    public void setFono(int fono) {
        this.fono = fono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
   
    
}
