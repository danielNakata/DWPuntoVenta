/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa;

import dwpuntoventa.gui.main.VMain;
import dwpuntoventa.utils.Config;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author daniel
 */
public class DWPuntoVenta {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws InstantiationException {
        Config.loadConfig();
        
        try {
                    //UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
                    UIManager.setLookAndFeel("de.javasoft.plaf.synthetica.SyntheticaAluOxideLookAndFeel");
            } catch (UnsupportedLookAndFeelException e) {						
                try {
                    //UIManager.setLookAndFeel(new SyntheticaAluOxideLookAndFeel());
                    UIManager.setLookAndFeel("de.javasoft.plaf.synthetica.SyntheticaAluOxideLookAndFeel");
                } catch (UnsupportedLookAndFeelException e1) {							
                    e1.printStackTrace();
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(DWPuntoVenta.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(DWPuntoVenta.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(DWPuntoVenta.class.getName()).log(Level.SEVERE, null, ex);
                }

            } catch (ClassNotFoundException e) {
                try {
                    //UIManager.setLookAndFeel(new SyntheticaAluOxideLookAndFeel());
                    UIManager.setLookAndFeel("de.javasoft.plaf.synthetica.SyntheticaAluOxideLookAndFeel");
                } catch (UnsupportedLookAndFeelException e1) {							
                    e1.printStackTrace();
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(DWPuntoVenta.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(DWPuntoVenta.class.getName()).log(Level.SEVERE, null, ex);
                }
            } catch (InstantiationException e) {						
                           e.printStackTrace();
            } catch (IllegalAccessException e) {                                             
               e.printStackTrace();
            }
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VMain().setVisible(true);
            }
        });
    }
    
}
