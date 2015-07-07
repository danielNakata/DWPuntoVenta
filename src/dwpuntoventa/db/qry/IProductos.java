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
public interface IProductos {
    
    /**
     * Consulta para los productos
     */
    public static String spConsultaProductos = "{call dnntienda.SP_CONSULTA_PRODUCTO(?,?)}";
    
    /**
     * Consulta para agregar un nuevo producto al catalogo
     */
    public static String spAgregaProducto = "{call dnntienda.SP_AGREGA_PRODUCTO(?,?,?,?,?,?,?,?,?,?,?)}";
    
    /**
     * Consulta para modificar el estatus de un producto
     */
    public static String spModificaEstatusProducto = "{call dnntienda.SP_MODIFICA_ESTATUS_PRODUCTO(?,?,?,?) }";
    
    /**
     * Consulta para modificar los datos de un producto
     */
    public static String spModificaProducto = "{call dnntienda.SP_MODIFICA_PRODUCTO(?,?,?,?,?,?,?,?,?,?,?,?,?)}";
    
    /**
     * Metodo para agregar un nuevo tipo de producto
     */
    public static String spAgregaTipoProducto = "{ call dnntienda,SP_AGREGA_TIPO_PRODUCTO(?,?,?,?)}";
}
