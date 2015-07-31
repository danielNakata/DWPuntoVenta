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
public interface IProveedores {
    
    /**
     * Consulta para agregar un proveedor
     */
    public static String spAgregaProveedor = "{call dnntienda.SP_AGREGA_PROVEEDOR(?,?,?,?)}";
    
    /**
     * Consulta para obtener los datos de un proveedor
     */
    public static String spConsultaProveedor = "{call dnntienda.SP_CONSULTA_PROVEDOR(?,?,?)}";
    
    /**
     * Consulta para modificar el estatus de un proveedor
     */
    public static String spModificaEstatusProveedor = "{call dnntienda.SP_MODIFICA_ESTATUS_PROVEEDOR(?,?,?,?)}";
    
    /**
     * Consulta para modificar los datos de un proveedor
     */
    public static String spModificaProveedor = "{call dnntienda.SP_MODIFICA_PROVEEDOR(?,?,?,?,?,?,?)}";
}
