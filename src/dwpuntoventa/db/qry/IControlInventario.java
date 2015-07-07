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
public interface IControlInventario {
    
    /**
     * Llamada al sp para registrar movimientos de inventario
     */
    public static String spRegistraMovInventario = "{call dnntienda.SP_INVENTARIO_MOV(?,?,?,?,?,?,?,?,?)}";
    
    /**
     * Llamada al SP para obtener los tipos de movimiento del inventario
     */
    public static String spConsultaMovimientosInventario = "{call dnntienda.SP_CONSULTA_CATALOGO_MOVIMIENTOS(?)}";
}
