/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio;

import java.util.List;

/**
 *
 * @author Microsoft
 */
public interface Cliente_Servicio {
    public /*static*/ String Grabar(int id,String dni , String nombre, String direccion,String telefono, String correo, String usuario, String contraseña);

    public String Actualizar(int id,String dni , String nombre, String direccion,String telefono, String correo, String usuario, String contraseña);

    public String Eliminar(int id);

    public Object[] Buscar(int id);

    public List Listar();
    
}
