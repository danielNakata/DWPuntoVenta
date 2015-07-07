/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.utils;

/**
 *
 * @author daniel
 */
public class Config {
    
    public static String rutaBase = System.getProperty("user.dir")+java.io.File.separator;
    public static String rutaArchConfig = rutaBase+"config"+java.io.File.separator+"DWPuntoVenta.config";
    public static String rutaArchLog = rutaBase+"log"+java.io.File.separator+"DWPuntoVenta.log";
    
    public static String nombreApp = "DWStockControl";
    public static String nombreAppComercial = "Stock Control";
    public static String nombreOwner = "Daniel Ortega";
    public static String nombreDeveloper = "DW";
    public static String version = "BETA";
    public static String fechaCompilacion = new java.util.Date().toString();
    public static String detalleVersion = "Version Beta en Construccion";
    
    public static String dbHost = "";
    public static String dbPort = "";
    public static String dbName = "";
    public static String dbUser = "";
    public static String dbPass = "";
    public static String dbDriver = "";
    public static String dbUrl = "";
    
    public static boolean isLoaded = false;
    
    /**
     * Metodo para cargar la configuración inicial de la aplicacion
     * @return 
     */
    public static void loadConfig(){
        java.util.Properties props = null;
        try{
            props = new java.util.Properties();
            props.load(new java.io.FileInputStream(rutaArchConfig));
            if(props != null){
                nombreApp = props.getProperty(nombreApp)==null?nombreApp:props.getProperty("nombreApp");
                nombreAppComercial = props.getProperty(nombreAppComercial)==null?nombreAppComercial:props.getProperty("nombreAppComercial");
                nombreOwner = props.getProperty(nombreOwner)==null?nombreOwner:props.getProperty("nombreOwner");
                nombreDeveloper = props.getProperty(nombreDeveloper)==null?nombreDeveloper:props.getProperty("nombreDeveloper");
                
                dbHost = props.getProperty(dbHost)==null?dbHost:props.getProperty("dbHost");
                dbPort = props.getProperty(dbPort)==null?dbPort:props.getProperty("dbPort");
                dbName = props.getProperty(dbName)==null?nombreApp:props.getProperty("dbName");
                dbUser = props.getProperty(dbUser)==null?dbUser:props.getProperty("dbUser");
                dbPass = props.getProperty(dbPass)==null?dbPass:props.getProperty("dbPass");
                dbDriver = props.getProperty(dbDriver)==null?dbDriver:props.getProperty("dbDriver");
                dbUrl = props.getProperty(dbUrl)==null?dbUrl:props.getProperty("dbUrl");
                
                isLoaded = true;
            }
        }catch(Exception ex){
            System.out.println("loadConfig: " + ex);
            isLoaded = false;
        }
    }
    
    
    
}
