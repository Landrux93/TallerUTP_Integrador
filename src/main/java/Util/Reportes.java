/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import java.io.File;
import java.io.InputStream;
import javax.swing.WindowConstants;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Jean Pool Mendoza Sacachipana
 */
public class Reportes {
    
    public Reportes(){
        try {
            JasperReport reporte= (JasperReport) JRLoader.loadObject(getClass().getResource("/Reportes/CLIENTES.jasper"));
            File file= new File("/Reportes/CLIENTES.jrxml");
            JasperDesign jasperdesign= JRXmlLoader.load(file);
            JasperPrint print = new JasperPrint();
            JasperViewer view= new JasperViewer(print,false);
            view.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
            view.setVisible(true);
            
        } catch (Exception e) {
            e.getMessage();
        }
        
        
    }
    
}
