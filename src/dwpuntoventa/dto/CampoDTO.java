/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto;

/**
 *
 * @author daniel
 */
public class CampoDTO {
    public String nombreCampo = "";
    public String etiquetaCampo = "";
    public int idTipoCampo = 0;
    public String tipoCampo = "";
    public String nombreBase = "";
    public String nombreTabla = "";

    public String getNombreCampo() {
        return nombreCampo;
    }

    public void setNombreCampo(String nombreCampo) {
        this.nombreCampo = nombreCampo;
    }

    public String getEtiquetaCampo() {
        return etiquetaCampo;
    }

    public void setEtiquetaCampo(String etiquetaCampo) {
        this.etiquetaCampo = etiquetaCampo;
    }

    public int getIdTipoCampo() {
        return idTipoCampo;
    }

    public void setIdTipoCampo(int idTipoCampo) {
        this.idTipoCampo = idTipoCampo;
    }

    public String getTipoCampo() {
        return tipoCampo;
    }

    public void setTipoCampo(String tipoCampo) {
        this.tipoCampo = tipoCampo;
    }

    public String getNombreBase() {
        return nombreBase;
    }

    public void setNombreBase(String nombreBase) {
        this.nombreBase = nombreBase;
    }

    public String getNombreTabla() {
        return nombreTabla;
    }

    public void setNombreTabla(String nombreTabla) {
        this.nombreTabla = nombreTabla;
    }

    @Override
    public String toString() {
        return "CampoDTO{" + "nombreCampo=" + nombreCampo + ", etiquetaCampo=" + etiquetaCampo + ", idTipoCampo=" + idTipoCampo + ", tipoCampo=" + tipoCampo + ", nombreBase=" + nombreBase + ", nombreTabla=" + nombreTabla + '}';
    }
    
}
