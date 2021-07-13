/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio;

import Negocio.Administrador;
import Persistencia.Admin_DAO;
import Persistencia.Admin_DAO_Imp;

/**
 *
 * @author Microsoft
 */
public class Administrador_Servicio_Imp implements Administrador_Servicio {

    private Admin_DAO admindao;

    public Administrador_Servicio_Imp() {
        admindao = new Admin_DAO_Imp();
    }

    @Override
    public Object[] validar(String usuario, String contra) {
        Administrador admin = admindao.validar(usuario, contra);
        if (admin != null) {
            Object[] fila = new Object[2];
            fila[0] = admin.getUsuario();
            fila[1] = admin.getContraseña();
            return fila;
        }
        return null;
    }

}
