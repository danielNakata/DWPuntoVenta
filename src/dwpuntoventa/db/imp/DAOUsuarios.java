/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.db.imp;

import dwpuntoventa.db.qry.IUsuarios;
import dwpuntoventa.db.utils.Conexion;
import dwpuntoventa.db.utils.DAOBase;
import dwpuntoventa.dto.CampoDTO;
import dwpuntoventa.dto.RespGralDTO;
import dwpuntoventa.dto.out.UsuarioDTO;
import dwpuntoventa.dto.param.ConsultaBaseDTO;
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
        }finally{
            cerrar(con, st, rs);
        }
        return resp;
    }
    
    /**
     * Metodo para consultar los datos del usuario
     * @param param
     * @return 
     */
    public RespGralDTO consultaDatosUsuario(ConsultaBaseDTO param){
        RespGralDTO resp = new RespGralDTO();
        Connection con = null;
        CallableStatement st = null;
        ResultSet rs = null;
        int paramIn = 1, paramOut = 1;
        java.util.ArrayList<UsuarioDTO> lista = new java.util.ArrayList();
        try{
            resp.setMsg("LOS PARAMETROS NO SE RECIBIERON CORRECTAMENTE");
            if(param != null){
                resp.setMsg("NO SE PUDO REALIZAR LA CONEXION CON LA BASE DE DATOS");
                conex = new Conexion();
                con = conex.getConexion();
                if(con != null){
                    resp.setMsg("NO SE PUDO REALIZAR LA CONSULTA");
                    st = con.prepareCall(spConsultaDatosUsuario);
                    st.setInt(paramIn++, param.getTipoBusqueda());
                    st.setString(paramIn++, param.getFiltro());
                    st.setInt(paramIn++, param.getIdtienda());
                    
                    rs = st.executeQuery();
                    
                    resp.setMsg("NO SE PUDO OBTENER DATOS DE LA CONSULTA");
                    if(rs != null){
                        java.util.ArrayList<CampoDTO> listaCampos = getListaCampos(rs.getMetaData());
                        if(!listaCampos.isEmpty()){
                            while(rs.next()){
                                UsuarioDTO fila = new UsuarioDTO();
                                for(CampoDTO campo : listaCampos){
                                    switch(campo.getIdTipoCampo()){
                                        case java.sql.Types.DOUBLE:
                                            fila.getClass().getField(campo.getEtiquetaCampo()).setDouble(fila, rs.getDouble(campo.getEtiquetaCampo()));
                                            break;
                                            
                                        case java.sql.Types.INTEGER:
                                            fila.getClass().getField(campo.getEtiquetaCampo()).setInt(fila, rs.getInt(campo.getEtiquetaCampo()));
                                            break;
                                            
                                        case java.sql.Types.BIGINT:
                                            fila.getClass().getField(campo.getEtiquetaCampo()).setInt(fila, rs.getInt(campo.getEtiquetaCampo()));
                                            break;
                                            
                                        case java.sql.Types.VARCHAR:
                                            fila.getClass().getField(campo.getEtiquetaCampo()).set(fila, rs.getString(campo.getEtiquetaCampo()));
                                            break;
                                            
                                        default:
                                            fila.getClass().getField(campo.getEtiquetaCampo()).set(fila, rs.getString(campo.getEtiquetaCampo()));
                                            break;
                                    }
                                }
                                lista.add(fila);
                            }
                        }
                        
                        resp.setMsg("LA CONSULTA NO DEVOLVIO DATOS");
                        if(!lista.isEmpty()){
                            resp.setNumReg(lista.size());
                            resp.setMsg("CONSULTA REALIZADA CORRECTAMENTE");
                            resp.setRes(1);
                            resp.setListaCampos(listaCampos);
                            resp.setListaUsuarioDTO(lista);
                        }
                    }
                }
            }
        }catch(Exception ex){
            resp.setRes(0);
            resp.setMsg(ex.toString());
        }finally{
            cerrar(con, st, rs);
        }
        return resp;
    }
    
}
