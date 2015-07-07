/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto;

import dwpuntoventa.dto.out.ProductoDTO;
import dwpuntoventa.dto.out.UsuarioDTO;
import java.util.ArrayList;

/**
 *
 * @author daniel
 */
public class RespGralDTO {
    private int res = 0;
    private String msg = "";
    private int numReg = 0;
    private java.util.ArrayList<CampoDTO> listaCampos = null;
    private UsuarioDTO usuarioLog = null;
    private java.util.ArrayList<UsuarioDTO> listaUsuarioDTO = null;
    private java.util.ArrayList<ProductoDTO> listaProductoDTO = null;

    public int getRes() {
        return res;
    }

    public void setRes(int res) {
        this.res = res;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getNumReg() {
        return numReg;
    }

    public void setNumReg(int numReg) {
        this.numReg = numReg;
    }

    public java.util.ArrayList<CampoDTO> getListaCampos() {
        return listaCampos;
    }

    public void setListaCampos(java.util.ArrayList<CampoDTO> listaCampos) {
        this.listaCampos = listaCampos;
    }

    public UsuarioDTO getUsuarioLog() {
        return usuarioLog;
    }

    public void setUsuarioLog(UsuarioDTO usuarioLog) {
        this.usuarioLog = usuarioLog;
    }

    public ArrayList<UsuarioDTO> getListaUsuarioDTO() {
        return listaUsuarioDTO;
    }

    public void setListaUsuarioDTO(ArrayList<UsuarioDTO> listaUsuarioDTO) {
        this.listaUsuarioDTO = listaUsuarioDTO;
    }

    public ArrayList<ProductoDTO> getListaProductoDTO() {
        return listaProductoDTO;
    }

    public void setListaProductoDTO(ArrayList<ProductoDTO> listaProductoDTO) {
        this.listaProductoDTO = listaProductoDTO;
    }

    @Override
    public String toString() {
        return "RespGralDTO{" + "res=" + res + ", msg=" + msg + ", numReg=" + numReg + ", listaCampos=" + listaCampos + ", usuarioLog=" + usuarioLog + ", listaUsuarioDTO=" + listaUsuarioDTO + ", listaProductoDTO=" + listaProductoDTO + '}';
    }

    
}
