/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Mail;

/**
 *
 * @author Jean Pool Mendoza Sacachipana
 */
public class MailTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Mail mail= new Mail();
        System.out.println(mail.sendMain("jean.mendoza@tecsup.edu.pe","Este mensaje es de prueba", "Este mensaje es pruebita!"));
    }
    
}
