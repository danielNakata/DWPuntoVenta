/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.db.imp;

import appdan.applogger.main.AppLogger;
import dwpuntoventa.db.qry.IProductos;
import dwpuntoventa.db.utils.Conexion;
import dwpuntoventa.db.utils.DAOBase;
import dwpuntoventa.dto.CampoDTO;
import dwpuntoventa.dto.RespGralDTO;
import dwpuntoventa.dto.out.ProductoDTO;
import dwpuntoventa.dto.param.ConsultaBaseDTO;
import dwpuntoventa.utils.Config;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author danie_000
 */
public class DAOProductos extends DAOBase implements IProductos{
    
    private Conexion conex = null;
    
    /**
     * Consulta de datos de productos
     * @param param
     * @return 
     */
    public RespGralDTO consultaDatosProductos(ConsultaBaseDTO param){
        RespGralDTO resp = new RespGralDTO();
        Connection con = null;
        CallableStatement st = null;
        ResultSet rs = null;
        int paramIn = 1, paramOut = 1;
        java.util.ArrayList<ProductoDTO> lista = new java.util.ArrayList();
        try{
            resp.setMsg("LOS PARAMETROS NO SE RECIBIERON CORRECTAMENTE");
            if(param != null){
                resp.setMsg("NO SE PUDO REALIZAR LA CONEXION CON LA BASE DE DATOS");
                conex = new Conexion();
                con = conex.getConexion();
                if(con != null){
                    resp.setMsg("NO SE PUDO REALIZAR LA CONSULTA");
                    st = con.prepareCall(spConsultaProductos);
                    st.setInt(paramIn++, param.getTipoBusqueda());
                    st.setString(paramIn++, param.getFiltro());
                    st.setInt(paramIn++, param.getIdtienda());
                    
                    rs = st.executeQuery();
                    
                    resp.setMsg("NO SE PUDO OBTENER DATOS DE LA CONSULTA");
                    if(rs != null){
                        java.util.ArrayList<CampoDTO> listaCampos = getListaCampos(rs.getMetaData());
                        if(!listaCampos.isEmpty()){
                            while(rs.next()){
                                ProductoDTO fila = new ProductoDTO();
                                for(CampoDTO campo : listaCampos){
                                    switch(campo.getIdTipoCampo()){
                                        case java.sql.Types.DOUBLE:
                                            fila.getClass().getField(campo.getEtiquetaCampo()).setDouble(fila, rs.getDouble(campo.getEtiquetaCampo()));
                                            break;
                                            
                                        case java.sql.Types.INTEGER:
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
                            resp.setListaProductoDTO(lista);
                        }
                    }
                }
            }
        }catch(Exception ex){
            resp.setRes(0);
            resp.setMsg(ex.toString());
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: consultaDatosProductos Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: consultaDatosProductos Ex:" + ex.toString()));
        }finally{
            cerrar(con, st, rs);
        }
        return resp;
    }

}
