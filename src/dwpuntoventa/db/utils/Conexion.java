/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.db.utils;


import java.sql.DriverManager;

/**
 *
 * @author daniel
 */
public class Conexion {
    
    private java.sql.Connection con = null;
    private String msgExcepcion = "";
    
    /**
     * Consturctor de la clase
     */
    public Conexion(){
        try{
            if(!dwpuntoventa.utils.Config.isLoaded)
                dwpuntoventa.utils.Config.loadConfig();
            
            Class.forName(dwpuntoventa.utils.Config.dbDriver);
            con = DriverManager.getConnection(dwpuntoventa.utils.Config.dbUrl+dwpuntoventa.utils.Config.dbHost+":"+dwpuntoventa.utils.Config.dbPort+"/"+dwpuntoventa.utils.Config.dbName, 
                    dwpuntoventa.utils.Config.dbUser, dwpuntoventa.utils.Config.dbPass);
            
        }catch(Exception ex){
            msgExcepcion = new java.util.Date().toString() + "Clase: " + this.getClass() + " Metodo: Constructor Excepción: " + ex;
            System.out.println(msgExcepcion);
            con = null;
        }
    }
    
    /**
     * Metodo para obtener el recurso de conexion a la base de datos
     * @return 
     */
    public java.sql.Connection getConexion(){
        return this.con;
    }
    
}
