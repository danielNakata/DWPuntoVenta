/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.dto.param;

/**
 *
 * @author danie_000
 */
public class ConsultaBaseDTO {
    
    public int tipoBusqueda = 0;
    public String filtro = "";

    public int getTipoBusqueda() {
        return tipoBusqueda;
    }

    public void setTipoBusqueda(int tipoBusqueda) {
        this.tipoBusqueda = tipoBusqueda;
    }

    public String getFiltro() {
        return filtro;
    }

    public void setFiltro(String filtro) {
        this.filtro = filtro;
    }

    @Override
    public String toString() {
        return "ConsultaBaseDTO{" + "tipoBusqueda=" + tipoBusqueda + ", filtro=" + filtro + '}';
    }
    
}
