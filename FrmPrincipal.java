package codigo;

/**
 *
 * @author abihs
 */

import java.awt.Color;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringReader;
import java.nio.file.Files;
import java.util.logging.Level;
import java.util.logging.Logger;
import java_cup.runtime.Symbol;
import javax.swing.JFileChooser;

/**
 *
 * @author Charly Ponce
 */
public class FrmPrincipal extends javax.swing.JFrame {

    /**
     * Creates new form FrmPrincipal
     */
    public FrmPrincipal() {
        initComponents();
        this.setLocationRelativeTo(null);
    }
    
    private void analizarLexico() throws IOException{
        int cont = 1;
        
        String expr = (String) txtResultado.getText();
        Lexer lexer = new Lexer(new StringReader(expr));
        String resultado = "LINEA " + cont + "\t\tSIMBOLO\n";
        while (true) {
            Tokens token = lexer.yylex();
            if (token == null) {
                txtAnalizarLex.setText(resultado);
                return;
            }
            switch (token) {
                case Linea:
                    cont++;
                    resultado += "LINEA " + cont + "\n";
                    break;
                case Gato:
                    resultado += "  <Gato>\t\t" + lexer.lexeme + "\n";
                    break;
                case Apostrofe:
                    resultado += "  <Apostrofe>\t" + lexer.lexeme + "\n";
                    break;
                case SignoPeso:
                    resultado += "  <Signo Peso>\t" + lexer.lexeme + "\n";
                    break;
                case ORG:
                    resultado += "  < ORG>\t" + lexer.lexeme + "\n";
                    break;
                case Opcode:
                    resultado += "  <Opcode>\t" + lexer.lexeme + "\n";
                    break;
                case DosPuntos:
                    resultado += "  <:>\t" + lexer.lexeme + "\n";
                    break;
                case Otro:
                    resultado += "  <Otro>\t" + lexer.lexeme + "\n";
                    break;
                case INH_ABA:
                    resultado += "  1B : \t" + lexer.lexeme + "\n";
                    break;
                case INH_ABX:
                    resultado += "  3A\t" + lexer.lexeme + "\n";
                    break;
                case INH_ABY:
                    resultado += "  18 3A\t" + lexer.lexeme + "\n";
                    break;
                case INH_ASLA:
                    resultado += "  48\t" + lexer.lexeme + "\n";
                    break;
                case INH_ASLB:
                    resultado += "  58\t" + lexer.lexeme + "\n";
                    break;
                case INH_ASLD:
                    resultado += "  5\t" + lexer.lexeme + "\n";
                    break;
                case INH_ASRA:
                    resultado += "  47\t" + lexer.lexeme + "\n";
                    break;
                case INH_ASRB:
                    resultado += "  57\t" + lexer.lexeme + "\n";
                    break;
                case INH_CBA:
                    resultado += "  11\t" + lexer.lexeme + "\n";
                    break;
                case INH_CLC:
                    resultado += "  0C\t" + lexer.lexeme + "\n";
                    break;
                case INH_CLI:
                    resultado += "  0E\t" + lexer.lexeme + "\n";
                    break;
                case INH_CLRA:
                    resultado += "  4F\t" + lexer.lexeme + "\n";
                    break;
                case INH_CLRB:
                    resultado += "  5F\t" + lexer.lexeme + "\n";
                    break;
                case INH_CLV:
                    resultado += "  0A\t" + lexer.lexeme + "\n";
                    break;
                case INH_COMA:
                    resultado += "  43\t" + lexer.lexeme + "\n";
                    break;
                case INH_COMB:
                    resultado += "  53\t" + lexer.lexeme + "\n";
                    break;
                case INH_DAA:
                    resultado += "  19\t" + lexer.lexeme + "\n";
                    break;
                case INH_DECA:
                    resultado += "  4A\t" + lexer.lexeme + "\n";
                    break;
                case INH_DECB:
                    resultado += "  5A\t" + lexer.lexeme + "\n";
                    break;
                case INH_DES:
                    resultado += "  34\t" + lexer.lexeme + "\n";
                    break;
                case INH_DEX:
                    resultado += "  09\t" + lexer.lexeme + "\n";
                    break;
                case INH_DEY:
                    resultado += "  18 09\t" + lexer.lexeme + "\n";
                    break;
                case INH_FDIV:
                    resultado += "  03\t" + lexer.lexeme + "\n";
                    break;
                case INH_IDIV:
                    resultado += "  02\t" + lexer.lexeme + "\n";
                    break;
                case INH_INCA:
                    resultado += "  4C\t" + lexer.lexeme + "\n";
                    break;
                case INH_INCB:
                    resultado += "  5C\t" + lexer.lexeme + "\n";
                    break;
                case INH_INS:
                    resultado += "  31\t" + lexer.lexeme + "\n";
                    break;
                case INH_INX:
                    resultado += "  08\t" + lexer.lexeme + "\n";
                    break;
                case INH_INY:
                    resultado += "  18 08\t" + lexer.lexeme + "\n";
                    break;
                case INH_LSLA:
                    resultado += "  48\t" + lexer.lexeme + "\n";
                    break;
                case INH_LSLB:
                    resultado += "  58\t" + lexer.lexeme + "\n";
                    break;
                case INH_LSLD:
                    resultado += "  05\t" + lexer.lexeme + "\n";
                    break;
                case INH_LSRA:
                    resultado += "  44\t" + lexer.lexeme + "\n";
                    break;
                case INH_LSRB:
                    resultado += "  54\t" + lexer.lexeme + "\n";
                    break;
                case INH_LSRD:
                    resultado += "  04\t" + lexer.lexeme + "\n";
                    break;
                case INH_MUL:
                    resultado += "  3D\t" + lexer.lexeme + "\n";
                    break; 
                case INH_NEGA:
                    resultado += "  40\t" + lexer.lexeme + "\n";
                    break;
                case INH_NEGB:
                    resultado += "  50\t" + lexer.lexeme + "\n";
                    break;
                case INH_NOP:
                    resultado += "  01\t" + lexer.lexeme + "\n";
                    break;
                case INH_PSHA:
                    resultado += "  36\t" + lexer.lexeme + "\n";
                    break;
                case INH_PSHB:
                    resultado += "  37\t" + lexer.lexeme + "\n";
                    break;
                case INH_PSHX:
                    resultado += "  3C\t" + lexer.lexeme + "\n";
                    break;
                case INH_PSHY:
                    resultado += "  18 3C\t" + lexer.lexeme + "\n";
                    break;
                case INH_PULA:
                    resultado += "  32\t" + lexer.lexeme + "\n";
                    break;
                case INH_PULB:
                    resultado += "  33\t" + lexer.lexeme + "\n";
                    break;
                case INH_PULX:
                    resultado += "  38\t" + lexer.lexeme + "\n";
                    break;
                case INH_PULY:
                    resultado += "  18 38\t" + lexer.lexeme + "\n";
                    break;
                case INH_ROLA:
                    resultado += "  49\t" + lexer.lexeme + "\n";
                    break;
                case INH_ROLB:
                    resultado += "  59\t" + lexer.lexeme + "\n";
                    break;
                case INH_RORA:
                    resultado += "  46\t" + lexer.lexeme + "\n";
                    break;
                case INH_RORB:
                    resultado += "  56\t" + lexer.lexeme + "\n";
                    break;
                case INH_RTI:
                    resultado += "  3B\t" + lexer.lexeme + "\n";
                    break;
                case INH_RTS:
                    resultado += "  39\t" + lexer.lexeme + "\n";
                    break;
                case INH_SBA:
                    resultado += "  10\t" + lexer.lexeme + "\n";
                    break;
                case INH_SEC:
                    resultado += "  OD\t" + lexer.lexeme + "\n";
                    break;
                case INH_SEI:
                    resultado += "  OF\t" + lexer.lexeme + "\n";
                    break;
                case INH_SEV:
                    resultado += "  OB\t" + lexer.lexeme + "\n";
                    break;
                case INH_STOP:
                    resultado += "  CF\t" + lexer.lexeme + "\n";
                    break;
                case INH_SWI:
                    resultado += "  3F\t" + lexer.lexeme + "\n";
                    break;
                case INH_TAB:
                    resultado += "  16\t" + lexer.lexeme + "\n";
                    break;
                case INH_TAP:
                    resultado += "  0 6\t" + lexer.lexeme + "\n";
                    break;
                case INH_TBA:
                    resultado += "  17\t" + lexer.lexeme + "\n";
                    break;
                case INH_TETS:
                    resultado += "  0 0\t" + lexer.lexeme + "\n";
                    break;
                case INH_TPA:
                    resultado += "  0 7\t" + lexer.lexeme + "\n";
                    break;
                case INH_TSTA:
                    resultado += "  4D\t" + lexer.lexeme + "\n";
                    break;
                case INH_TSTB:
                    resultado += "  5D\t" + lexer.lexeme + "\n";
                    break;
                case INH_TSX:
                    resultado += "  30\t" + lexer.lexeme + "\n";
                    break;
                case INH_TSY:
                    resultado += "  18 30\t" + lexer.lexeme + "\n";
                    break;
                case INH_TXS:
                    resultado += "  35\t" + lexer.lexeme + "\n";
                    break;
                case INH_TYS:
                    resultado += "  18 35\t" + lexer.lexeme + "\n";
                    break;
                case INH_WAI:
                    resultado += "  3E\t" + lexer.lexeme + "\n";
                    break;
                case INH_XGDX:
                    resultado += "  8F\t" + lexer.lexeme + "\n";
                    break;
                case INH_XGDY:
                    resultado += "  18 8F\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ADCA:
                    resultado += "  89\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ADCB:
                    resultado += "  C9\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ADDA:
                    resultado += "  8B\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ADDB:
                    resultado += "  CB\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ADDD:
                    resultado += "  C3\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ANDA:
                    resultado += "  84\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ANDB:
                    resultado += "  C4\t" + lexer.lexeme + "\n";
                    break;
                case IMM_BITA:
                    resultado += "  85\t" + lexer.lexeme + "\n";
                    break;
                case IMM_BITB:
                    resultado += "  C5\t" + lexer.lexeme + "\n";
                    break;
                case IMM_CMPA:
                    resultado += "  81\t" + lexer.lexeme + "\n";
                    break;
                case IMM_CMPB:
                    resultado += "  C1\t" + lexer.lexeme + "\n";
                    break;
                case IMM_CPD:
                    resultado += "  1A 83\t" + lexer.lexeme + "\n";
                    break;
                case IMM_CPX:
                    resultado += "  8C\t" + lexer.lexeme + "\n";
                    break;
                case IMM_CPY:
                    resultado += "  18 8C\t" + lexer.lexeme + "\n";
                    break;
                case IMM_EORA:
                    resultado += "  88\t" + lexer.lexeme + "\n";
                    break;
                case IMM_EORB:
                    resultado += "  C8\t" + lexer.lexeme + "\n";
                    break;
                case IMM_LDAA:
                    resultado += "  86\t" + lexer.lexeme + "\n";
                    break;
                case IMM_LDAB:
                    resultado += "  C6\t" + lexer.lexeme + "\n";
                    break;
                case IMM_LDD:
                    resultado += "  CC\t" + lexer.lexeme + "\n";
                    break;
                case IMM_LDS:
                    resultado += "  8E\t" + lexer.lexeme + "\n";
                    break;
                case IMM_LDX:
                    resultado += "  CE\t" + lexer.lexeme + "\n";
                    break;
                case IMM_LDY:
                    resultado += "  18 CE\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ORAA:
                    resultado += "  8A\t" + lexer.lexeme + "\n";
                    break;
                case IMM_ORAB:
                    resultado += "  CA\t" + lexer.lexeme + "\n";
                    break;
                case IMM_SBCA:
                    resultado += "  82\t" + lexer.lexeme + "\n";
                    break;
                case IMM_SBCB:
                    resultado += "  C2\t" + lexer.lexeme + "\n";
                    break;
                case IMM_SUBA:
                    resultado += "  80\t" + lexer.lexeme + "\n";
                    break;
                case IMM_SUBB:
                    resultado += "  C0\t" + lexer.lexeme + "\n";
                    break;
                case IMM_SUBD:
                    resultado += "  83\t" + lexer.lexeme + "\n";
                    break;
                case Numero:
                    resultado += "  <Número>\t" + lexer.lexeme + "\n";
                    break;
                case ERROR:
                    resultado += "  <Simbolo no definido>\n";
                    break;
                default:
                    resultado += "  < " + lexer.lexeme + " >\n";
                    break;
            }
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
        btnArchivo = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtResultado = new javax.swing.JTextArea();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtAnalizarLex = new javax.swing.JTextArea();
        btnAnalizarLex = new javax.swing.JButton();
        btnLimpiarLex = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        txtAnalizarSin = new javax.swing.JTextArea();
        btnAnalizarSin = new javax.swing.JButton();
        btnLimpiarSin = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Analizador Lexico", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        btnArchivo.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnArchivo.setText("Abrir archivo");
        btnArchivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnArchivoActionPerformed(evt);
            }
        });

        txtResultado.setColumns(20);
        txtResultado.setRows(5);
        jScrollPane1.setViewportView(txtResultado);

        txtAnalizarLex.setEditable(false);
        txtAnalizarLex.setColumns(20);
        txtAnalizarLex.setRows(5);
        jScrollPane2.setViewportView(txtAnalizarLex);

        btnAnalizarLex.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnAnalizarLex.setText("Analizar");
        btnAnalizarLex.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAnalizarLexActionPerformed(evt);
            }
        });

        btnLimpiarLex.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnLimpiarLex.setText("Limpiar");
        btnLimpiarLex.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLimpiarLexActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnArchivo, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 239, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btnAnalizarLex)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnLimpiarLex))
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 322, javax.swing.GroupLayout.PREFERRED_SIZE)))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel1Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 314, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(386, Short.MAX_VALUE)))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnArchivo)
                    .addComponent(btnAnalizarLex)
                    .addComponent(btnLimpiarLex))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 349, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addGap(0, 50, Short.MAX_VALUE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 341, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Analizador Sintactico", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        txtAnalizarSin.setEditable(false);
        txtAnalizarSin.setColumns(20);
        txtAnalizarSin.setRows(5);
        jScrollPane3.setViewportView(txtAnalizarSin);

        btnAnalizarSin.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnAnalizarSin.setText("Analizar");
        btnAnalizarSin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAnalizarSinActionPerformed(evt);
            }
        });

        btnLimpiarSin.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnLimpiarSin.setText("Limpiar");
        btnLimpiarSin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLimpiarSinActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(btnAnalizarSin)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnLimpiarSin))))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnAnalizarSin)
                    .addComponent(btnLimpiarSin))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 117, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnArchivoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnArchivoActionPerformed
        // TODO add your handling code here:
        JFileChooser chooser = new JFileChooser();
        chooser.showOpenDialog(null);
        File archivo = new File(chooser.getSelectedFile().getAbsolutePath());
        
        try {
            String ST = new String(Files.readAllBytes(archivo.toPath()));
            txtResultado.setText(ST);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnArchivoActionPerformed

    private void btnLimpiarLexActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimpiarLexActionPerformed
        // TODO add your handling code here:
        txtAnalizarLex.setText(null);
    }//GEN-LAST:event_btnLimpiarLexActionPerformed

    private void btnLimpiarSinActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimpiarSinActionPerformed
        // TODO add your handling code here:
        txtAnalizarSin.setText(null);
    }//GEN-LAST:event_btnLimpiarSinActionPerformed

    private void btnAnalizarLexActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAnalizarLexActionPerformed
        try {
            analizarLexico();
        } catch (IOException ex) {
            Logger.getLogger(FrmPrincipal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnAnalizarLexActionPerformed

    private void btnAnalizarSinActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAnalizarSinActionPerformed
        // TODO add your handling code here:
        String ST = txtResultado.getText();
        Sintax s = new Sintax(new codigo.LexerCup(new StringReader(ST)));
        
        try {
            s.parse();
            txtAnalizarSin.setText("Analisis realizado correctamente");
            txtAnalizarSin.setForeground(new Color(25, 111, 61));
        } catch (Exception ex) {
            Symbol sym = s.getS();
            txtAnalizarSin.setText("Error de sintaxis. Linea: " + (sym.right + 1) + " Columna: " + (sym.left + 1) + ", Texto: \"" + sym.value + "\"");
            txtAnalizarSin.setForeground(Color.red);
        }
    }//GEN-LAST:event_btnAnalizarSinActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmPrincipal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAnalizarLex;
    private javax.swing.JButton btnAnalizarSin;
    private javax.swing.JButton btnArchivo;
    private javax.swing.JButton btnLimpiarLex;
    private javax.swing.JButton btnLimpiarSin;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextArea txtAnalizarLex;
    private javax.swing.JTextArea txtAnalizarSin;
    private javax.swing.JTextArea txtResultado;
    // End of variables declaration//GEN-END:variables

    private static class Sintax {

        public Sintax() {
        }

        private Sintax(LexerCup lexerCup) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        private void parse() {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        private Symbol getS() {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
}
