/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwpuntoventa.gui.MUsuarios;

import dwpuntoventa.gui.MProveedores.*;
import appdan.applogger.main.AppLogger;
import dwpuntoventa.db.imp.DAOProveedores;
import dwpuntoventa.db.imp.DAOUsuarios;
import dwpuntoventa.dto.RespGralDTO;
import dwpuntoventa.dto.out.ProductoDTO;
import dwpuntoventa.dto.out.ProveedorDTO;
import dwpuntoventa.dto.out.UsuarioDTO;
import dwpuntoventa.dto.param.ConsultaBaseDTO;
import dwpuntoventa.utils.Config;
import dwpuntoventa.utils.Constantes;
import dwpuntoventa.utils.ModeloTabla;
import java.util.regex.PatternSyntaxException;
import javax.swing.ListSelectionModel;
import javax.swing.RowFilter;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.table.TableRowSorter;

/**
 *
 * @author danie_000
 */
public class VCatUsuarios extends javax.swing.JInternalFrame {
    
    private ModeloTabla modeloOriginal = null;
    private ModeloTabla modeloFiltro = null;
    private int idtienda = -1;
    private static final int modeloSinEdicion = 1;
    private TableRowSorter<ModeloTabla> ordenador = null;
    
    private String[] cols = {
        "login-Usuario-120-s"
            ,"nombre-Nombre(s)-150-s"
            ,"apellidos-Apellido(s)-150-s"
            ,"perfil-Perfil-120-s"
            ,"ultimologin-Ultimo Acceso-150-s"            
    };
    
    /**
     * Creates new form VCatArticulos
     */
    public VCatUsuarios() {
        initComponents();
        poneColumnas();
        cargaUsuarios(Constantes.bsqUsrTodos, "%");
        creaListenerFiltro();
    }
    
    public VCatUsuarios(int idtienda) {
        this.idtienda = idtienda;
        initComponents();
        poneColumnas();
        cargaUsuarios(Constantes.bsqUsrTodos, "%");
        creaListenerFiltro();
    }
    
    /**
     * Metodo privado para poner las columnas a la tabla de articulos
     */
    private void poneColumnas(){
        try{
            this.modeloOriginal = new ModeloTabla();
            for(int i = 0; i<this.cols.length; i++){
                this.modeloOriginal.addColumn(this.cols[i].split("-")[1]);
            }
            
            this.tblDatos.setModel(this.modeloOriginal);
            for(int i = 0; i<this.cols.length; i++){
                this.tblDatos.getColumnModel().getColumn(i).setPreferredWidth(Integer.parseInt(this.cols[i].split("-")[2]));
                this.tblDatos.getColumnModel().getColumn(i).setResizable(false);
            }            
            
            this.modeloOriginal.setTipoModelo(modeloSinEdicion);
            
            this.tblDatos.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: poneColumnas Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: poneColumnas Ex:" + ex.toString()));
        }
    }

    /**
     * Metodo que realiza la busqueda de los articulos
     * @param tipoBusqueda tipo de busqueda que se realizara
     * @param filtro filtro que se aplicara a la tabla
     */
    private void cargaUsuarios(int tipoBusqueda, String filtro){
        try{
            ConsultaBaseDTO param = new ConsultaBaseDTO();
            param.setTipoBusqueda(tipoBusqueda);
            param.setFiltro("%"+filtro+"%");
            param.setIdtienda(idtienda);
            RespGralDTO resp = new DAOUsuarios().consultaDatosUsuario(param);
            if(resp.getRes() == 1){
                this.llenaTablaUsuarios(resp.getListaUsuarioDTO());
            }
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: cargaUsuarios Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: cargaUsuarios Ex:" + ex.toString()));
        }
    }
    
    /**
     * Metodo para llenar la tabla con los datos
     * @param lista 
     */
    private void llenaTablaUsuarios(java.util.ArrayList<UsuarioDTO> lista){
        ModeloTabla modelo = null;
        try{
            if(lista != null){
                ordenador = null;
                modelo = (ModeloTabla) this.tblDatos.getModel();
                for(UsuarioDTO dto:lista){
                    java.util.Vector vec = new java.util.Vector();
                    for(int i = 0; i<this.cols.length; i++){
                        vec.add(dto.getClass().getField(this.cols[i].split("-")[0]).get(dto));
                    }
                    modelo.addRow(vec);
                }
                
                modelo.setTipoModelo(1);
                this.tblDatos.setModel(modelo);
                
                ordenador = new TableRowSorter(this.tblDatos.getModel());
                this.tblDatos.setRowSorter(ordenador);
            }
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: llenaTablaProv Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: llenaTablaProv Ex:" + ex.toString()));
        }
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtFiltro = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        cmbTipoBsq = new javax.swing.JComboBox();
        btnCerrar = new javax.swing.JButton();
        btnImprimir = new javax.swing.JButton();
        btnNuevo = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblDatos = new javax.swing.JTable();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("Catalogo de Usuarios");

        jPanel1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true));

        jLabel1.setText("Filtro");

        jLabel2.setText("Buscar");

        cmbTipoBsq.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "1-Usuario", "2-Nombre", "3-Apellidos", "4-Perfil", "5-Todos" }));
        cmbTipoBsq.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbTipoBsqActionPerformed(evt);
            }
        });

        btnCerrar.setText("C");
        btnCerrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCerrarActionPerformed(evt);
            }
        });

        btnImprimir.setText("E");

        btnNuevo.setText("N");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtFiltro, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cmbTipoBsq, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 198, Short.MAX_VALUE)
                .addComponent(btnNuevo, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnImprimir, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnCerrar, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtFiltro, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2)
                    .addComponent(cmbTipoBsq, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnCerrar, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnImprimir, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnNuevo, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(16, Short.MAX_VALUE))
        );

        tblDatos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tblDatos.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_OFF);
        tblDatos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblDatosMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblDatos);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jScrollPane1)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 420, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCerrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCerrarActionPerformed
        try{
            this.dispose();
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: btnCerrarActionPerformed Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: btnCerrarActionPerformed Ex:" + ex.toString()));
        }
    }//GEN-LAST:event_btnCerrarActionPerformed

    private void tblDatosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblDatosMouseClicked
        try{
            if(evt.getClickCount() == 2){
                System.out.println("Fila Seleccionada: " + this.tblDatos.getSelectedRow());
                int filaSel = this.tblDatos.getSelectedRow();
                ProveedorDTO provSel = new ProveedorDTO();
                for(int i = 0; i<this.cols.length; i++){
                    provSel.getClass().getField(this.cols[i].split("-")[0]).set(provSel, this.tblDatos.getValueAt(filaSel, i));
                }
                
                System.out.println("Datos de la fila seleccionada: " + provSel.toString());
            }
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: tblDatosMouseClicked Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: tblDatosMouseClicked Ex:" + ex.toString()));
        }
    }//GEN-LAST:event_tblDatosMouseClicked

    private void cmbTipoBsqActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbTipoBsqActionPerformed
        try{
            if(this.cmbTipoBsq.getSelectedItem().toString().split("-")[0].equals("7")){
                this.txtFiltro.setText("");
            }
            this.txtFiltro.requestFocus();
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: cmbTipoBsqActionPerformed Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: cmbTipoBsqActionPerformed Ex:" + ex.toString()));
        }
    }//GEN-LAST:event_cmbTipoBsqActionPerformed

    private void creaListenerFiltro(){
        try{
            txtFiltro.getDocument().addDocumentListener(new DocumentListener(){

                @Override
                public void insertUpdate(DocumentEvent e) {
                    filtraTabla();
                }

                @Override
                public void removeUpdate(DocumentEvent e) {
                    filtraTabla();
                }

                @Override
                public void changedUpdate(DocumentEvent e) {
                    filtraTabla();
                }
            
            });
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: creaListenerFiltro Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: creaListenerFiltro Ex:" + ex.toString()));
        }
    }
    
    private void filtraTabla(){
        RowFilter<ModeloTabla, Object> filtro = null;
        try{
            try{
                int opsel = Integer.valueOf(this.cmbTipoBsq.getSelectedItem().toString().split("-")[0]);
                switch(opsel){
                    case 1:
                        filtro = RowFilter.regexFilter(txtFiltro.getText().toLowerCase(), 0);
                        break;
                        
                    case 2:
                        filtro = RowFilter.regexFilter(txtFiltro.getText().toUpperCase(), 1);
                        break;
                        
                    case 3:
                        filtro = RowFilter.regexFilter(txtFiltro.getText().toUpperCase(), 2);
                        break;
                        
                    case 4:
                        filtro = RowFilter.regexFilter(txtFiltro.getText().toUpperCase(), 4);
                        break;
                        
                    default:
                        filtro = RowFilter.regexFilter("", 0);
                        break;
                }
                
            }catch(PatternSyntaxException ex){
                return;
            }
            ordenador.setRowFilter(filtro);
        }catch(Exception ex){
            System.out.println(Config.nombreApp+"-"
                    +new java.util.Date().toString()
                    +" Clase: "+this.getClass().toString()
                    +" Metodo: filtraTabla Ex: "+ ex);
            AppLogger.Logger(Config.nombreApp, 1
                    , this.getClass().toString()
                    , new StringBuffer("Metodo: filtraTabla Ex:" + ex.toString()));
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCerrar;
    private javax.swing.JButton btnImprimir;
    private javax.swing.JButton btnNuevo;
    private javax.swing.JComboBox cmbTipoBsq;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblDatos;
    private javax.swing.JTextField txtFiltro;
    // End of variables declaration//GEN-END:variables
}
