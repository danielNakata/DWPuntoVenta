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
public interface IUsuarios {
    
    /**
     * Llamada al SP para iniciar sesion
     */
    public static String spInicioSesion = "{call dnntienda.SP_INICIO_SESION(?,?)}";
    
    /**
     * Llamada al SP para obtener los datos del usuario
     */
    public static String spConsultaDatosUsuario = "{call dnntienda.SP_CONSULTA_DATOS_USUARIO(?,?)}";
    
    /**
     * Consulta para agregar un usuario nuevo
     */
    public static String spAgregaUsuario = "{call dnntienda.SP_AGREGA_USUARIO(?,?,?,?,?,?,?)}";
}
