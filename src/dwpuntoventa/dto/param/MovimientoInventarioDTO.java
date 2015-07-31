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
public class MovimientoInventarioDTO {
    private int claveProducto = 0;
    private int claveProveedor = 0;
    private int idMovimiento = 0;
    private String fecha = "";
    private String factura = "";
    private int idTienda = 0;
    private double cantidad = 0;
    private double costo = 0;
    private String usuario = "";

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

    public int getIdMovimiento() {
        return idMovimiento;
    }

    public void setIdMovimiento(int idMovimiento) {
        this.idMovimiento = idMovimiento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getFactura() {
        return factura;
    }

    public void setFactura(String factura) {
        this.factura = factura;
    }

    public int getIdTienda() {
        return idTienda;
    }

    public void setIdTienda(int idTienda) {
        this.idTienda = idTienda;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    @Override
    public String toString() {
        return "MovimientoInventarioDTO{" + "claveProducto=" + claveProducto + ", claveProveedor=" + claveProveedor + ", idMovimiento=" + idMovimiento + ", fecha=" + fecha + ", factura=" + factura + ", idTienda=" + idTienda + ", cantidad=" + cantidad + ", costo=" + costo + ", usuario=" + usuario + '}';
    }
    
}
