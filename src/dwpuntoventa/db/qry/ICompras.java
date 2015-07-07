/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.db.qry;

/**
 *
 * @author danie_000
 */
public interface ICompras {
    
    /**
     * Llamada al SP para registrar la compra
     */
    public static String spRegistraCompra = "{call dnntienda.SP_REGISTRA_COMPRA(?,?,?,?,?,?,?,?,?,?)}";
    
    /**
     * Llamada al SP para agregar el detalle a la compra
     */
    public static String spRegistraDetalleCompra = "{call dnntienda.SP_AGREGA_DETALLE_COMPRA(?,?,?,?,?,?,?,?,?)}";
}
