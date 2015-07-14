/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.utils;

/**
 *
 * @author danie_000
 */
public class ModeloTabla extends javax.swing.table.DefaultTableModel{
    
    private int tipoModelo = 0;
    
    
    @Override
    public Class getColumnClass(int col){
        try{
            return (getValueAt(0, col).getClass());
        }catch(Exception ex){
            return String.class;
        }
    }
    
    
    @Override
    /**
     * Metodo que indica si las celdas son editables
     * 0: todas son editables
     * 1: ninguna es editable
     */
    public boolean isCellEditable(int row, int column){
        switch(this.tipoModelo){
            default:
                return true;
                
            case 1:
                return false;
        }
    }

    public int getTipoModelo() {
        return tipoModelo;
    }

    public void setTipoModelo(int tipoModelo) {
        this.tipoModelo = tipoModelo;
    }
    
    
    
}
