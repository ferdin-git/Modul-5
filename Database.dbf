Source Code :

package projectakhir;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;



public class koneksiOracle {
       
    public static Connection KoneksiDB(){
        try{
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection koneksi = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ferdin_06920", "12");
                System.out.println("Koneski Database Sukses");
                return koneksi;
           }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        
           }
    }
}
    

package projectakhir;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class formPelanggan extends javax.swing.JFrame {
    
    Connection koneksi = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    
    
    private void viewData(){
        DefaultTableModel tabelku = new DefaultTableModel();
        tabelku.addColumn("USERNAME");
        tabelku.addColumn("PASSWORD");
        tabelku.addColumn("NAMA");
        tabelku.addColumn("ALAMAT");
        tabelku.addColumn("NO_TELP");
        
        try{
            String sql = "select * from list_us_er order by username asc";
            pst = koneksi.prepareStatement(sql);
            rs = pst.executeQuery(sql);
            while (rs.next()) {
                tabelku.addRow(new Object[]{
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                        
                });
            }
            jTable2.setModel(tabelku);
        }catch (SQLException ex) {
            JOptionPane.showMessageDialog(rootPane, "DATA TIDAK ADA!");
        }
        
    }
    public formPelanggan() {
        initComponents();
        koneksi = koneksiOracle.KoneksiDB();
        viewData();
    }
    public void formKosong(){
        txt_username.setText("");
        txt_password.setText("");
        txt_nama.setText("");
        txt_alamat.setText("");
        txt_telp.setText("");
        
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        txt_username = new javax.swing.JTextField();
        txt_password = new javax.swing.JTextField();
        txt_nama = new javax.swing.JTextField();
        txt_alamat = new javax.swing.JTextField();
        txt_telp = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane1.setViewportView(jTable1);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("DATA PELANGGAN");

        jLabel2.setText("USERNAME");

        jLabel3.setText("PASSWORD");

        jLabel4.setText("NAMA");

        jLabel5.setText("ALAMAT");

        jLabel6.setText("NO TELP");

        jButton1.setText("SIMPAN");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("KEMBALI");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jTable2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable2MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable2);

        jButton3.setText("HAPUS");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setText("UPDATE");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton3))
                    .addComponent(txt_username, javax.swing.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE)
                    .addComponent(txt_password)
                    .addComponent(txt_nama)
                    .addComponent(txt_alamat)
                    .addComponent(txt_telp))
                .addGap(33, 33, 33)
                .addComponent(jButton4)
                .addGap(32, 32, 32)
                .addComponent(jButton2)
                .addGap(69, 69, 69))
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 616, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addGap(185, 185, 185)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txt_username, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txt_password, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txt_nama, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txt_alamat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel6)
                    .addComponent(txt_telp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2)
                    .addComponent(jButton3)
                    .addComponent(jButton4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 17, Short.MAX_VALUE)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>                        

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
        this.dispose();
        new tampilanUtama().setVisible(true);
    }                                        

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
        try{
            String sql = "insert into us_er (username, password, nama, alamat, no_telp) VALUES (?,?,?,?,?)"; 
            pst = koneksi.prepareStatement(sql);
            pst.setString(1, txt_username.getText());
            pst.setString(2, txt_password.getText());
            pst.setString(3, txt_nama.getText());
            pst.setString(4, txt_alamat.getText());
            pst.setString(5, txt_telp.getText());
            pst.execute();
            JOptionPane.showMessageDialog(null, "DATA TERSIMPAN!");
      
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
        viewData();
        formKosong();
                
    }                                        

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        try{
            String username = txt_username.getText();
            String password = txt_password.getText();
            String nama = txt_nama.getText();
            String alamat = txt_alamat.getText();
            String no_telp = txt_telp.getText();
            
            String sql = "update us_er set password = '"+password+"',"
                    + "nama = '"+nama+"',"
                    + "alamat = '"+alamat+"',"
                    + "no_telp = '"+no_telp+"' where username = '"+username+"' ";
            pst = koneksi.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null, "DATA TERUPDATE");
            
            viewData();
            formKosong();
            
        }catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
    }                                        

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        try{
            String sql = "delete from us_er where username = ?";
            pst = koneksi.prepareStatement(sql);
            pst.setString(1, txt_username.getText());
            pst.execute();
            JOptionPane.showMessageDialog(null, "DATA TERHAPUS");
        }catch (Exception e) {
            JOptionPane.showMessageDialog(null, "DATA GAGAL DIHAPUS");
        }
        viewData();
        formKosong();
    }                                        

    private void jTable2MouseClicked(java.awt.event.MouseEvent evt) {                                     
        // TODO add your handling code here:
        try{
            int row = jTable2.getSelectedRow();
            String klik = (jTable2.getModel().getValueAt(row, 0).toString());
            String sql = "select * from us_er where username = '"+klik+"'";
            pst = koneksi.prepareStatement(sql);
            rs = pst.executeQuery();
            if(rs.next()){
                String username = rs.getString("username");
                txt_username.setText(username);
                String password = rs.getString("password");
                txt_password.setText(password);
                String nama = rs.getString("nama");
                txt_nama.setText(nama);
                String alamat = rs.getString("alamat");
                txt_alamat.setText(alamat);
                String no_telp = rs.getString("no_telp");
                txt_telp.setText(no_telp);
                jButton1.setEnabled(false);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(formPelanggan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }                                    

    
    public static void main(String args[]) {
       
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new formPelanggan().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JTextField txt_alamat;
    private javax.swing.JTextField txt_nama;
    private javax.swing.JTextField txt_password;
    private javax.swing.JTextField txt_telp;
    private javax.swing.JTextField txt_username;
    // End of variables declaration                   
}


package projectakhir;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class formBarang extends javax.swing.JFrame {
    Connection koneksi = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    

    private void viewData(){
        DefaultTableModel tabelku = new DefaultTableModel();
        tabelku.addColumn("ID BARANG");
        tabelku.addColumn("ID KATEGORI");
        tabelku.addColumn("NAMA BARANG");
        tabelku.addColumn("STOK");
        tabelku.addColumn("HARGA");
        
        try{
            String sql = "select * from barang order by id_barang asc";
            pst = koneksi.prepareStatement(sql);
            rs = pst.executeQuery(sql);
            while (rs.next()) {
                tabelku.addRow(new Object[]{
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                        
                });
            }
            jTable2.setModel(tabelku);
        }catch (SQLException ex) {
            JOptionPane.showMessageDialog(rootPane, "DATA TIDAK ADA!");
        }
        
    }
    public void formKosong(){
        txt_idBarang.setText("");
        txt_nmBarang.setText("");
        txt_kategori.setText("");
        txt_stok.setText("");
        txt_harga.setText("");
        
    }
    

    
    public formBarang() {
        initComponents();
        koneksi = koneksiOracle.KoneksiDB();
        viewData();
      //  comboBoxKategori();
        formKosong();
    }

    /
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        KEMBALI = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        txt_idBarang = new javax.swing.JTextField();
        txt_nmBarang = new javax.swing.JTextField();
        txt_stok = new javax.swing.JTextField();
        txt_harga = new javax.swing.JTextField();
        txt_kategori = new javax.swing.JTextField();

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane1.setViewportView(jTable1);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel1.setText("DATA BARANG");

        jLabel2.setText("ID BARANG");

        jLabel3.setText("ID KATEGORI");

        jLabel5.setText("NAMA BARANG");

        jLabel6.setText("STOK");

        jLabel7.setText("HARGA");

        jButton1.setText("SIMPAN");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        KEMBALI.setText("KEMBALI");
        KEMBALI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                KEMBALIActionPerformed(evt);
            }
        });

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane2.setViewportView(jTable2);

        txt_kategori.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_kategoriActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 595, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(222, 222, 222)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addComponent(txt_idBarang, javax.swing.GroupLayout.PREFERRED_SIZE, 196, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(0, 20, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(212, 212, 212)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_kategori, javax.swing.GroupLayout.PREFERRED_SIZE, 196, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jButton1)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 50, Short.MAX_VALUE)
                                    .addComponent(KEMBALI))
                                .addComponent(txt_stok)
                                .addComponent(txt_harga)
                                .addComponent(txt_nmBarang)))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(jLabel2))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(txt_idBarang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(txt_kategori, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(txt_nmBarang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6)
                            .addComponent(txt_stok, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jLabel7))
                    .addComponent(txt_harga, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(KEMBALI))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 292, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(50, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>                        

    private void KEMBALIActionPerformed(java.awt.event.ActionEvent evt) {                                        

        // TODO add your handling code here:
        
        this.dispose();
        new tampilanUtama().setVisible(true);
    }                                       

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
       try{
           //int id_kategori = jComboBox1.getSelectedIndex();
           String sql = "insert into barang (id_barang, id_kategori, nama_barang, stok, harga) values (?,?,?,?,?)";
            pst = koneksi.prepareStatement(sql);
            pst.setString(1, txt_idBarang.getText());
            pst.setString(2, txt_kategori.getText());
            pst.setString(3, txt_nmBarang.getText());
            pst.setString(4, txt_stok.getText());
            pst.setString(5, txt_harga.getText());
            pst.execute();
       } catch (Exception e){
           JOptionPane.showMessageDialog(null, e);
           
       }
       viewData();
       formKosong();
    }                                        

    private void txt_kategoriActionPerformed(java.awt.event.ActionEvent evt) {                                             
        // TODO add your handling code here:
    }                                            

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
            java.util.logging.Logger.getLogger(formBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(formBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(formBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(formBarang.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new formBarang().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton KEMBALI;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JTextField txt_harga;
    private javax.swing.JTextField txt_idBarang;
    private javax.swing.JTextField txt_kategori;
    private javax.swing.JTextField txt_nmBarang;
    private javax.swing.JTextField txt_stok;
    // End of variables declaration                   
}


package projectakhir;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;


public class formTransaksi1_1 extends javax.swing.JFrame {
    
    Connection koneksi = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    
    
    private void viewData(){
        DefaultTableModel tabelku = new DefaultTableModel();
       tabelku.addColumn("ID DETAIL PENJUALAN");
        tabelku.addColumn("ID BARANG");
        tabelku.addColumn("JUMLAH");
        tabelku.addColumn("ID PENJUALAN");
        tabelku.addColumn("TGL PENJUALAN");
        
        try{
            String sql = "select * from list_transaksi";
            pst = koneksi.prepareStatement(sql);
            rs = pst.executeQuery(sql);
            while (rs.next()) {
                tabelku.addRow(new Object[]{
                    rs.getString(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                        
                });
            }
            jTable2.setModel(tabelku);
        }catch (SQLException ex) {
            JOptionPane.showMessageDialog(rootPane, "DATA TIDAK ADA!");
        }
        
    }
    public formTransaksi1_1() {
        initComponents();
        koneksi = koneksiOracle.KoneksiDB();
        viewData();
    }
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
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
        jScrollPane1.setViewportView(jTable1);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("DATA TRANSAKSI");

        jButton2.setText("KEMBALI");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jTable2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable2MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(185, 185, 185)
                        .addComponent(jLabel1)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 606, Short.MAX_VALUE))
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(252, 252, 252)
                .addComponent(jButton2)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton2)
                .addContainerGap(201, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>                        

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
        this.dispose();
        new tampilanUtama().setVisible(true);
    }                                        

    private void jTable2MouseClicked(java.awt.event.MouseEvent evt) {                                     
        // TODO add your handling code here:
    }                                    

  
    public static void main(String args[]) {
       
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(formPelanggan.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new formPelanggan().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    // End of variables declaration                   
}


package projectakhir;


public class tampilanUtama extends javax.swing.JFrame {

    
    public tampilanUtama() {
        initComponents();
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Source Sans Pro", 1, 18)); // NOI18N
        jLabel1.setText("SI KOPERASI");

        jButton1.setText("DATA BARANG");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("DATA PELANGGAN");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("TRANSAKSI");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jLabel2.setText("Powered By :");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(0, 1, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(27, 27, 27))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addGap(65, 65, 65))))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(jButton2)
                        .addGap(32, 32, 32)
                        .addComponent(jButton1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 46, Short.MAX_VALUE)))
                .addComponent(jButton3)
                .addGap(28, 28, 28))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(98, 98, 98)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(jButton3)
                    .addComponent(jButton1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 75, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(53, 53, 53))
        );

        pack();
    }// </editor-fold>                        

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
        this.dispose();
        new formPelanggan().setVisible(true);
    }                                        

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
        this.dispose();
        new formBarang().setVisible(true);
    }                                        

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        // TODO add your handling code here:
        this.dispose();
        new formTransaksi1_1().setVisible(true);
    }                                        


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
            java.util.logging.Logger.getLogger(tampilanUtama.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(tampilanUtama.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(tampilanUtama.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(tampilanUtama.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new tampilanUtama().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify                     
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    // End of variables declaration                   
}


Query :

 
create tablespace sistemjual
datafile 'C:\oraclexe\app\oracle\oradata\XE\sistem_jual.dbf'
size 30M;

- buat user
create user ferdin_0690
identified by 
default tablespace sistemjual
quota unlimited on sistemjual;

- beri hak akses
grant all privileges to ferdin_0690

- login ke user yg tlh dibuat
conn ferdin_0690/

 

create table supplier
(
id_supplier    integer       not null,
nama_supplier    varchar(5),
nama_sales varchar(5),
no_telp       varchar(3),
alamat        varchar(00),
constraint PK_supplier primary key(id_supplier)
);

create table pembelian
(
id_pembelian 	integer 	not null,
id_supplier 	integer,
username 	varchar(0),
tgl_pembelian 	date,
constraint PK_pembelian primary key(id_pembelian)
);

create table detail_pembelian
(
id_detail_pembelian integer not null,
id_pembelian integer,
total_pembelian number(3),
jumlah_pembelian varchar(0),
constraint PK_detail_pembelian primary key (id_detail_pembelian)
);

create table us_er
(
username varchar(0) not null,
password varchar(0),
nama varchar(5),
alamat varchar(00),
no_telp varchar(3),
constraint PK_us_er primary key(username)
);

create table penjualan
(
id_penjualan integer not null,
username varchar(0),
tgl_penjualan date,
constraint PK_penjualan primary key(id_penjualan)
);

create table detail_penjualan
(
id_detail_penjualan integer not null,
id_barang integer,
id_penjualan integer,
jumlah number(3),
constraint PK_deatil_penjualan primary key(id_detail_penjualan)
);

create table barang
(
id_barang integer not null,
id_kategori integer,
id_detail_pembelian integer,
nama_barang varchar(5),
stok number(),
harga number(7),
constraint PK_barang primary key (id_barang)
);

create table kategori_barang
(
id_kategori integer not null,
nama_kategori varchar(5),
deskripsi varchar(5),
constraint PK_kategori_barang primary key (id_kategori)
);

alter table pembelian
add constraint FK_id_detail_pembelian foreign key (id_detail_pembelian)
references detail_pembelian(id_detail_pembelian)
add constraint FK_username foreign key (username)
references us_er (username)
add constraint FK_id_supplier foreign key (id_supplier)
references supplier (id_supplier);

alter table us_er
add constraint FK_id_pembelian foreign key (id_pembelian)
references pembelian(id_pembelian)
add constraint FK_id_penjualan foreign key (id_penjualan)
references penjualan (id_penjualan);

alter table detail_pembelian
add constraint FK_pembelian foreign key (id_pembelian)
references pembelian (id_pembelian);

alter table penjualan
add constraint FK_usename foreign key(username)
references us_er(username);

alter table detail_penjualan
add constraint FK_id_barang foreign key (id_barang)
references barang(id_barang)
add constraint FK_d_penjualan foreign key (id_penjualan)
references penjualan (id_penjualan);

alter table barang
add constraint FK__kategori foreign key (id_kategori)
references kategori_barang (id_kategori)
add constraint FK_i_detail_pembelian foreign key (id_detail_pembelian)
references detail_pembelian (id_detail_pembelian);


create sequence id_barang
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_supplier
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_pembelian
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_detail_pembelian
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_penjualan
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_detail_penjualan
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_kategori
minvalue 
maxvalue 999
start with 
increment by 
cache 0;



alter table pembelian rename column tgl_pembelian to n0690_tgl_pembelian;


alter table us_er
add constraint UQ_nama UNIQUE (nama);



alter table us_er modify(nama char(5));


insert into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (id_supplier.nextval, 'matahari', 'hari', '123456789', 'bekasi');

insert into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (id_supplier.nextval, 'indomart', 'heri', '234567891', 'bekasi');

insert all
into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (3, 'alfamart', 'hadi', '345678912', 'solo')
into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (4, 'alfamdid', 'haris', '456789123', 'papua')
into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (5, 'superindo', 'miun', '567891234', 'makassar')
select 1 from dual;


select * from supplier

update supplier
set nama_sales = 'bandan'
where id_supplier = 23;

update supplier
set nama_sales = 'bindin'
where id_supplier = 24;

update supplier
set nama_sales = 'bundun'
where id_supplier = 3;

update supplier
set nama_sales = 'benden'
where id_supplier = 4;

update supplier
set nama_sales = 'bondon'
where id_supplier = 5;

select * from supplier;

update supplier
set nama_sales = 'bondon'
where nama_sales = 'bandan' and alamat = 'bekasi' or id_supplier = 23;

update supplier
set nama_sales = 'benden'
where nama_sales = 'bindin' and alamat = 'bekasi' or id_supplier = 24;


update supplier
set nama_sales = 'bundun'
where nama_sales = 'bundun' and alamat = 'solo' or id_supplier = 3;


update supplier
set nama_sales = 'bindin'
where nama_sales = 'benden' and alamat = 'papua' or id_supplier = 4;


update supplier
set nama_sales = 'bandan'
where nama_sales = 'bondon' and alamat = 'makasssar' or id_supplier = 5;


select * from supplier;

update supplier
set nama_sales = 'bandan'
where id_supplier like'%23%';

update supplier
set nama_sales = 'bindin'
where id_supplier like'%24%';

update supplier
set nama_sales = 'bundun'
where id_supplier like'%3%';

update supplier
set nama_sales = 'benden'
where id_supplier like'%4%';

update supplier
set nama_sales = 'bondon'
where id_supplier like'%5%';

delete from supplier where id_supplier = 3 OR alamat = 'solo';

delete from supplier where id_supplier = 4 OR alamat = 'papua';

delete from supplier where id_supplier = 5 OR alamat = 'makassar';


savepoint point1;

savepoint point2;

commit

rollback to point1;

rollback to point2;

select * from supplier order by id_supplier asc;


select alamat from supplier group by alamat;

insert all
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (1, 'matahari', 'hari', '123456789', 'bekasi')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (2, 'indomart', 'heri', '234567891', 'bekasi')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (3, 'alfamart', 'hadi', '345678912', 'solo')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (4, 'alfamdid', 'haris', '456789123', 'papua')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (5, 'superindo', 'miun', '567891234', 'makassar')
select 1 from dual;

insert all
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(1, 'Rumah', 'Rumah Tangga')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(2, 'Obat', 'Kesehatan')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(3, 'Fashion', 'Fashion sytle')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(4, 'Dapur', 'Peralatan Rumah Tangga')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(5, 'Hobby', 'PEralatan Olahraga')
select 1 from dual;

insert all
into us_er(username, password, nama, alamat , no_telp) values('Broden','12', 'broden', 'Sidoarjo','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Sakera', '12', 'sakera', 'Jombang','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Burdin', '12', 'burdin', 'Mojokert','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Suhar', '12', 'suhar', 'Surabaya','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Rahma', '12', 'rahma', 'Madiun','123456789')
select 1 from dual;


insert all
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(1,1, 'Broden', to_date('11/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(2,2, 'Sakera', to_date('12/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(3,3, 'Burdin', to_date('13/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(4,4, 'Suhar', to_date('14/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(5,5, 'Rahma', to_date('15/12/2012','dd/mm/yyyy'))
select 1 from dual;

insert all 
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(1,1,20)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(2,2,20)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(3,3,30)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(4,4,40)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(5,5,50)
select 1 from dual;

insert all 
into penjualan(id_penjualan, username, tgl_penjualan) values(1,'Broden', to_date('18/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(2,'Sakera', to_date('16/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(3,'Burdin', to_date('19/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(4,'Suhar', to_date('20/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(5,'Rahma', to_date('21/03/2013','dd/mm/yyyy'))
select 1 from dual;

insert all
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(1,1,1,'Baygon', 50, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(2,2,2,'Bodrex', 99, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(3,3,3,'Anlene', 50, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(4,4,4,'Boneto', 99, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(5,5,5,'Master', 99, 2500)
select 1 from dual;

insert all
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(1,1,1,15)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(2,2,2,25)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(3,3,3,35)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(4,4,4,45)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(5,5,5,55)
select 1 from dual;


select MAX(total_pembelian) as Pembelian_Terbanyak, MIN(total_pembelian) as Pembelian_Terendah from detail_pembelian;

select id_detail_pembelian, count(id_detail_pembelian) as BANYAK_TRANSAKSI
from detail_pembelian where id_detail_pembelian = 5 AND total_pembelian = 50
group by id_detail_pembelian;

select id_detail_penjualan, sum(jumlah) as total_item
from detail_penjualan
where id_detail_penjualan = 3
group by id_detail_penjualan;

select avg(jumlah) as rata_rata_pembelian from detail_penjualan;


select id_detail_pembelian,
(select max(total_pembelian) as pembelian_terbanyak from detail_pembelian)
as pembelian_terbanyak1 ,
(select min(total_pembelian) as pembelian_terendah from detail_pembelian)
as pembelian_terendah1 from detail_pembelian;

select id_detail_pembelian,(select count(total_pembelian) as BANYAK_TRANSAKSI
from detail_pembelian
where id_detail_pembelian <= 5 and total_pembelian like '%0%' )
as BANYAK_TRANSAKSI from detail_pembelian;

select id_detail_penjualan,(select sum(jumlah) as total_item from detail_penjualan)
as total_item from detail_penjualan;

select id_detail_penjualan,(select avg(jumlah) as rata_rata_pembelian from detail_penjualan)
as rata_rata_pembelian from detail_penjualan;

select id_detail_penjualan,(select avg(jumlah) as rata_rata_pembelian from detail_penjualan)
as rata_rata_pembelian from detail_penjualan group by id_detail_penjualan;

select id_detail_penjualan from detail_penjualan where id_detail_penjualan < (select sum(id_detail_penjualan) as data from detail_penjualan);

select id_detail_penjualan, (select max(total_pembelian) from detail_pembelian
where id_detail_penjualan < (select sum(jumlah) from detail_penjualan
where id_detail_penjualan < (select avg(jumlah) from detail_penjualan)))
as total_tertinggi from detail_penjualan;



select a.username, a.tgl_penjualan, b.jumlah
from penjualan a
join detail_penjualan b
on a.id_penjualan = b.id_penjualan
where rownum <=6;

select a.username, b.total_pembelian, c.nama_barang
from pembelian a
left join detail_pembelian b
on a.id_pembelian = b.id_detail_pembelian
left join barang c
on b.id_detail_pembelian = c.id_barang
where rownum <= (select min(total_pembelian) from detail_pembelian);

select a.username, count(b.total_pembelian), c.nama_barang
from pembelian a
right join detail_pembelian b
on a.id_pembelian = b.id_detail_pembelian
right join barang c
on b.id_detail_pembelian = c.id_barang
group by a.username, b.total_pembelian, c.nama_barang;

create view list_view1 as
select id_supplier, nama_sales, nama_supplier
from supplier
where id_supplier = 1;

update list_view1
set nama_sales = 'bruh'
where nama_sales = 'hari';

create view list_view2a as
select a.nama_supplier,a.nama_sales,b.tgl_pembelian
from supplier a JOIN 
pembelian b
on a.id_supplier = b.id_pembelian;

create view list_view2b as
select b.username, c.total_pembelian, d.nama_barang
from pembelian b
left join detail_pembelian c
on b.id_pembelian = c.id_detail_pembelian
left join barang d
on c.id_detail_pembelian = d.id_barang
where rownum <= (select min(total_pembelian) from detail_pembelian);

create view list_view2c as
select a.username, count(b.total_pembelian) as banyak_beli, c.nama_barang
from pembelian a
right join detail_pembelian b
on a.id_pembelian = b.id_detail_pembelian
right join barang c
on b.id_detail_pembelian = c.id_barang
group by a.username, c.nama_barang;

update list_view2a
set tgl_pembelian = to_date('10/12/2012','dd/mm/yyyy')
where nama_sales = 'bruh';

create sequence username
minvalue 1
maxvalue 999
start with 1
increment by 1
cache 20;



