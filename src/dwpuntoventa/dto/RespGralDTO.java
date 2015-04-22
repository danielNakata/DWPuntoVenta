/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto;

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

    public ArrayList<CampoDTO> getListaCampos() {
        return listaCampos;
    }

    public void setListaCampos(ArrayList<CampoDTO> listaCampos) {
        this.listaCampos = listaCampos;
    }

    @Override
    public String toString() {
        return "RepGralDTO{" + "res=" + res + ", msg=" + msg + ", numReg=" + numReg + ", listaCampos=" + listaCampos + '}';
    }

    
}
