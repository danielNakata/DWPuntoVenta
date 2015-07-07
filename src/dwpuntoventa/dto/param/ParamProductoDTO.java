/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto.param;

/**
 *
 * @author danie_000
 */
public class ParamProductoDTO {
    public int claveProveedor = 0;
    public String producto = "";
    public String descripcion = "";
    public int claveTipo = 0;
    public double costo = 0;
    public double venta = 0;
    public double iva = 0;
    public double ieps = 0;
    public int claveUnidad = 0;
    public double cantidadUnidad = 0;
    public String codigoBarras = "";

    public int getClaveProveedor() {
        return claveProveedor;
    }

    public void setClaveProducto(int claveProducto) {
        this.claveProveedor = claveProducto;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getClaveTipo() {
        return claveTipo;
    }

    public void setClaveTipo(int claveTipo) {
        this.claveTipo = claveTipo;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public double getVenta() {
        return venta;
    }

    public void setVenta(double venta) {
        this.venta = venta;
    }

    public double getIva() {
        return iva;
    }

    public void setIva(double iva) {
        this.iva = iva;
    }

    public double getIeps() {
        return ieps;
    }

    public void setIeps(double ieps) {
        this.ieps = ieps;
    }

    public int getClaveUnidad() {
        return claveUnidad;
    }

    public void setClaveUnidad(int claveUnidad) {
        this.claveUnidad = claveUnidad;
    }

    public double getCantidadUnidad() {
        return cantidadUnidad;
    }

    public void setCantidadUnidad(double cantidadUnidad) {
        this.cantidadUnidad = cantidadUnidad;
    }

    public String getCodigoBarras() {
        return codigoBarras;
    }

    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }

    @Override
    public String toString() {
        return "ParamProductoDTO{" + "claveProveedor=" + claveProveedor + ", producto=" + producto + ", descripcion=" + descripcion + ", claveTipo=" + claveTipo + ", costo=" + costo + ", venta=" + venta + ", iva=" + iva + ", ieps=" + ieps + ", claveUnidad=" + claveUnidad + ", cantidadUnidad=" + cantidadUnidad + ", codigoBarras=" + codigoBarras + '}';
    }
    
    
}
