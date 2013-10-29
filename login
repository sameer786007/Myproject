 /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package billing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import java.awt.Color;
import java.awt.HeadlessException;
import javax.swing.JFrame;
import java.util.Calendar;
import java.util.GregorianCalendar;
/**
 *
 * @author sAmEeR
 */
public class loginframe extends javax.swing.JFrame {

    /**
     * Creates new form loginframe
     */
    public loginframe() {
        initComponents();
        
          showtime();
          fillcombo();
                      }
    public void fillcombo()
    {
   String[] items={"select","Admin","User"};
          jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(items));
    }
    public void showtime()
    {
        Calendar cal=new GregorianCalendar();  
        int month=cal.get(Calendar.MONTH);
    int day=cal.get(Calendar.DAY_OF_MONTH);
    int year=cal.get(Calendar.YEAR);
    date_text.setText(day+"/"+(month+1)+"/"+year);
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox();
        jLabel3 = new javax.swing.JLabel();
        user_text = new javax.swing.JTextField();
        pass_text = new javax.swing.JPasswordField();
        clear = new javax.swing.JButton();
        submit = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        date_text = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("BIZ-MATE");
        setBackground(new java.awt.Color(51, 153, 255));
        setForeground(new java.awt.Color(51, 0, 255));
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setBackground(new java.awt.Color(204, 255, 0));
        jLabel1.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel1.setText("SELECT USER ");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 50, 90, 20));

        jLabel2.setBackground(new java.awt.Color(153, 0, 153));
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setText("USER NAME");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 100, 80, 20));

        jComboBox1.setBackground(new java.awt.Color(0, 255, 255));
        jComboBox1.setForeground(new java.awt.Color(0, 0, 255));
        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 50, 80, -1));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setText("PASSWORD");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 140, 80, -1));

        user_text.setBackground(new java.awt.Color(102, 255, 255));
        user_text.setForeground(new java.awt.Color(51, 102, 255));
        user_text.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                user_textActionPerformed(evt);
            }
        });
        getContentPane().add(user_text, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 100, 110, -1));

        pass_text.setBackground(new java.awt.Color(102, 255, 255));
        pass_text.setForeground(new java.awt.Color(51, 153, 255));
        getContentPane().add(pass_text, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 140, 110, -1));

        clear.setBackground(new java.awt.Color(0, 255, 255));
        clear.setForeground(new java.awt.Color(0, 0, 255));
        clear.setText("CLEAR");
        clear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                clearActionPerformed(evt);
            }
        });
        getContentPane().add(clear, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 190, -1, -1));

        submit.setBackground(new java.awt.Color(51, 255, 255));
        submit.setForeground(new java.awt.Color(0, 0, 255));
        submit.setText("SUBMIT");
        submit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitActionPerformed(evt);
            }
        });
        getContentPane().add(submit, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 190, -1, -1));

        jLabel4.setBackground(new java.awt.Color(0, 153, 153));
        jLabel4.setFont(new java.awt.Font("Chaparral Pro", 3, 11)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 102, 255));
        jLabel4.setText("                                                                                            BIZ-MATE");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 510, -1));

        jLabel5.setBackground(new java.awt.Color(0, 204, 204));
        jLabel5.setFont(new java.awt.Font("Chaparral Pro Light", 3, 11)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 102, 255));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("                   powered by MILLIMINDS SOFTWARE  SOLUTIONS LTD");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 290, 510, 30));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setText("DATE");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 20, -1, -1));

        date_text.setBackground(new java.awt.Color(102, 255, 255));
        date_text.setForeground(new java.awt.Color(51, 102, 255));
        date_text.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                date_textActionPerformed(evt);
            }
        });
        getContentPane().add(date_text, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 10, 80, 30));

        jLabel7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/LOGIN.jpg"))); // NOI18N
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 50, 150, 140));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
    String value=jComboBox1.getSelectedItem().toString();
        
     if(value.equals("Admin"))
     {
        user_text.setText("admin");
     }
     else
     {
         user_text.setText("user");
     }
      
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void submitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitActionPerformed
              String uname,pword;
    uname=user_text.getText().trim();
       pword=pass_text.getText().trim();
              try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		System.out.println("Where is your MySQL JDBC Driver?");
		return;
	}
 
Connection connection = null;

	try {
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "root");
 System.out.println("connected!");
  Statement ps=connection.createStatement();
   
       } catch (SQLException e) {
		return;
	}
   String sql = "select * from loginfo where uname = ? and passwd = ?";
   try {
           PreparedStatement pt = connection.prepareStatement(sql);
pt.setString(1,user_text.getText());
pt.setString(2,pass_text.getText());
           ResultSet rs = pt.executeQuery();
if (rs.next()){
    
    if(uname.equals("admin"))
    {
 JOptionPane.showMessageDialog(null,"YOU ARE ENTERED SUCCESSFULLY","WELCOME ADMIN",JOptionPane.INFORMATION_MESSAGE);
           new MMenu().setVisible(true);
           setVisible(true);
           this.dispose(); 
    }
    else 
            {
                JOptionPane.showMessageDialog(null,"YOU ARE ENTERED SUCCESSFULLY","WELCOME USER",JOptionPane.INFORMATION_MESSAGE);
           new MMenu().setVisible(true);
           setVisible(true);
           this.dispose(); 
            }
}
else if(uname.equals("")&&(pword.equals(""))){
         JOptionPane.showMessageDialog(null,"Please Enter the USERNAME & PASSWORD","WARNING..!!!",JOptionPane.WARNING_MESSAGE);
}
else if(uname.equals("admin")||(uname.equals("user"))&&(pword.equals(""))){
         JOptionPane.showMessageDialog(null,"Please Enter the correct PASSWORD","WARNING..!!!",JOptionPane.WARNING_MESSAGE);
}
else if(uname.equals("")&&(pword.equals("pass")||(pword.equals("passwrd")))){
         JOptionPane.showMessageDialog(null,"Please Enter the correct USERNAME","WARNING..!!!",JOptionPane.WARNING_MESSAGE);
}
else
 JOptionPane.showMessageDialog(null,"Please Enter the correct USERNAME & PASSWORD","WARNING..!!!",JOptionPane.WARNING_MESSAGE);
}
catch (       SQLException | HeadlessException e){
JOptionPane.showMessageDialog(null, e);
}
    }//GEN-LAST:event_submitActionPerformed
    
    
    private void clearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_clearActionPerformed
        
         user_text.setText("");
         pass_text.setText("");
    }//GEN-LAST:event_clearActionPerformed

    private void date_textActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_date_textActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_date_textActionPerformed

    private void user_textActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_user_textActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_user_textActionPerformed

    
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
            java.util.logging.Logger.getLogger(loginframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(loginframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(loginframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(loginframe.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new loginframe().setVisible(true);
                
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton clear;
    private javax.swing.JTextField date_text;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPasswordField pass_text;
    private javax.swing.JButton submit;
    private javax.swing.JTextField user_text;
    // End of variables declaration//GEN-END:variables
}
