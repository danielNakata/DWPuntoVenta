/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.db.utils;

import dwpuntoventa.dto.CampoDTO;

/**
 *
 * @author daniel
 */
public class DAOBase {
    private String msgExcepcion = "";
    
    /**
     * Metodo para obtener la lista de campos de 
     * @param rsmd
     * @return 
     */
    public java.util.ArrayList<CampoDTO> getListaCampos(java.sql.ResultSetMetaData rsmd){
        java.util.ArrayList<CampoDTO> lista = null;
        try{
            if(rsmd != null){
                lista = new java.util.ArrayList();
                for(int i = 1; i<=rsmd.getColumnCount(); i++){
                    CampoDTO campo = new CampoDTO();
                    campo.setNombreCampo(rsmd.getColumnName(i));
                    campo.setEtiquetaCampo(rsmd.getColumnLabel(i));
                    campo.setIdTipoCampo(rsmd.getColumnType(i));
                    campo.setTipoCampo(rsmd.getColumnTypeName(i));
                    campo.setNombreTabla(rsmd.getTableName(i));
                    campo.setNombreBase(rsmd.getSchemaName(i));
                    
                    lista.add(campo);
                }
            }
        }catch(Exception ex){
            msgExcepcion = new java.util.Date().toString() + "Clase: " + this.getClass() + " Metodo: cerrar Excepción: " + ex;
            System.out.println(msgExcepcion);
        }
        return lista;
    }
    
    
    public void cerrar(java.sql.Connection con, java.sql.CallableStatement st, java.sql.ResultSet rs){
        try{
            if(st != null)
                st.close();
            
            if(rs != null)
                rs.close();
            
            if(con != null)
                con.close();
            
        }catch(Exception ex){
            msgExcepcion = new java.util.Date().toString() + "Clase: " + this.getClass() + " Metodo: cerrar Excepción: " + ex;
            System.out.println(msgExcepcion);
        }
    }
}
