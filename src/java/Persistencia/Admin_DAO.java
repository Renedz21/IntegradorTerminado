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
public interface Admin_DAO {
    public Administrador validar(String usuario, String contra);
    
}
