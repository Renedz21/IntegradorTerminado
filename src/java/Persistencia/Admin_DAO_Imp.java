/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Negocio.Administrador;

/**
 *
 * @author Microsoft
 */
public class Admin_DAO_Imp implements Admin_DAO {

    @Override
    public Administrador validar(String usuario, String contra) {
        String sql = "select * from administrador where usuario like '" + usuario + "' and contraseña like '" + contra + "'";
        Object[] fila = Operacion.buscar(sql);
        if (fila != null) {
            Administrador admin = new Administrador();
            admin.setUsuario(fila[0].toString());
            admin.setContraseña(fila[1].toString());
            return admin;
        }
        return null;

    }

}
