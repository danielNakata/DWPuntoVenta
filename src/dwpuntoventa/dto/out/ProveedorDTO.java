/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto.out;

/**
 *
 * @author danie_000
 */
public class ProveedorDTO {
    public int claveProveedor = 0;
    public String nombre = "";
    public String razonSocial = "";
    public String email = "";
    public String telefonos = "";
    public String fechaRegistro = "";
    public int activo = 0;
    public String sactivo = "";

    public int getClaveProveedor() {
        return claveProveedor;
    }

    public void setClaveProveedor(int claveProveedor) {
        this.claveProveedor = claveProveedor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefonos() {
        return telefonos;
    }

    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }

    public String getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(String fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }

    public String getSactivo() {
        return sactivo;
    }

    public void setSactivo(String sactivo) {
        this.sactivo = sactivo;
    }

    @Override
    public String toString() {
        return "ProveedorDTO{" + "claveProveedor=" + claveProveedor + ", nombre=" + nombre + ", razonSocial=" + razonSocial + ", email=" + email + ", telefonos=" + telefonos + ", fechaRegistro=" + fechaRegistro + ", activo=" + activo + ", sactivo=" + sactivo + '}';
    }
    
    
}
