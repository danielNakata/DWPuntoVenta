/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.db.imp;

import dwpuntoventa.db.qry.IUsuarios;
import dwpuntoventa.db.utils.Conexion;
import dwpuntoventa.db.utils.DAOBase;
import dwpuntoventa.dto.RespGralDTO;
import dwpuntoventa.dto.param.IniciaSesionDTO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author danie_000
 */
public class DAOUsuarios extends DAOBase implements IUsuarios{
    
    private Conexion conex = null;
    
    /**
     * Metodo para iniciar sesion
     * @param param
     * @return 
     */
    public RespGralDTO iniciaSesion(IniciaSesionDTO param){
        RespGralDTO resp = new RespGralDTO();
        Connection con = null;
        CallableStatement st = null;
        ResultSet rs = null;
        int paramIn = 1, paramOut = 1;
        try{
            resp.setMsg("LOS PARAMETROS NO SE RECIBIERON CORRECTAMENTE");
            if(param != null){
                resp.setMsg("NO SE PUDO REALIZAR LA CONEXION CON LA BASE DE DATOS");
                conex = new Conexion();
                con = conex.getConexion();
                if(con != null){
                    resp.setMsg("NO SE PUDO REALIZAR LA CONSULTA");
                    st = con.prepareCall(spInicioSesion);
                    st.setString(paramIn++, param.getUsuario());
                    st.setString(paramIn++, param.getContrasena());
                    
                    rs = st.executeQuery();
                    
                    resp.setMsg("NO SE PUDO OBTENER DATOS DE LA CONSULTA");
                    if(rs != null){
                        while(rs.next()){
                            resp.setRes(rs.getInt(1));
                            resp.setMsg(rs.getString(2));
                        }
                    }
                }
            }
        }catch(Exception ex){
            resp.setRes(0);
            resp.setMsg(ex.toString());
        }
        return resp;
    }
    
    
    
    
}
