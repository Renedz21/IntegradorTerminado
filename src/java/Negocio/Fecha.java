/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Microsoft
 */
public class Fecha {
    public static String FechaBD() {
        Date fecha=new Date();
            SimpleDateFormat formatFecha=new SimpleDateFormat("dd/MM/YYYY");
            return formatFecha.format(fecha);
    }
    
}
