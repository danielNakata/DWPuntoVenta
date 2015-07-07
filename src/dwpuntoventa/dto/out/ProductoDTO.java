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
public class ProductoDTO {
    public int claveProducto = 0;
    public int claveProveedor = 0;
    public String proveedor = "";
    public String producto = "";
    public int claveTipo = 0;
    public int claveEstado = 0;
    public double costo = 0;
    public double venta = 0;
    public double iva = 0;
    public double ieps = 0;
    public String fechaRegistro = "";
    public String fechaUltimaModif = "";
    public String fechaUltimaCompra = "";
    public int cantidadUltimaCompra = 0;
    public int claveUnidad = 0;
    public double cantidadUnidad = 0;
    public String codigoBarras = "";
    public String estado = "";
    public String tipo = "";
    public String unidad = "";
    public String abrevia = "";

    public int getClaveProducto() {
        return claveProducto;
    }

    public void setClaveProducto(int claveProducto) {
        this.claveProducto = claveProducto;
    }

    public int getClaveProveedor() {
        return claveProveedor;
    }

    public void setClaveProveedor(int claveProveedor) {
        this.claveProveedor = claveProveedor;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getClaveTipo() {
        return claveTipo;
    }

    public void setClaveTipo(int claveTipo) {
        this.claveTipo = claveTipo;
    }

    public int getClaveEstado() {
        return claveEstado;
    }

    public void setClaveEstado(int claveEstado) {
        this.claveEstado = claveEstado;
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

    public String getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(String fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getFechaUltimaModif() {
        return fechaUltimaModif;
    }

    public void setFechaUltimaModif(String fechaUltimaModif) {
        this.fechaUltimaModif = fechaUltimaModif;
    }

    public String getFechaUltimaCompra() {
        return fechaUltimaCompra;
    }

    public void setFechaUltimaCompra(String fechaUltimaCompra) {
        this.fechaUltimaCompra = fechaUltimaCompra;
    }

    public int getCantidadUltimaCompra() {
        return cantidadUltimaCompra;
    }

    public void setCantidadUltimaCompra(int cantidadUltimaCompra) {
        this.cantidadUltimaCompra = cantidadUltimaCompra;
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

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public String getAbrevia() {
        return abrevia;
    }

    public void setAbrevia(String abrevia) {
        this.abrevia = abrevia;
    }

    @Override
    public String toString() {
        return "ProductoDTO{" + "claveProducto=" + claveProducto + ", claveProveedor=" + claveProveedor + ", proveedor=" + proveedor + ", producto=" + producto + ", claveTipo=" + claveTipo + ", claveEstado=" + claveEstado + ", costo=" + costo + ", venta=" + venta + ", iva=" + iva + ", ieps=" + ieps + ", fechaRegistro=" + fechaRegistro + ", fechaUltimaModif=" + fechaUltimaModif + ", fechaUltimaCompra=" + fechaUltimaCompra + ", cantidadUltimaCompra=" + cantidadUltimaCompra + ", claveUnidad=" + claveUnidad + ", cantidadUnidad=" + cantidadUnidad + ", codigoBarras=" + codigoBarras + ", estado=" + estado + ", tipo=" + tipo + ", unidad=" + unidad + ", abrevia=" + abrevia + '}';
    }
    
}
