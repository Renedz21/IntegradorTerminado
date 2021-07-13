/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicio;

import Negocio.Empleado;
import Persistencia.Empleado_DAO;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Microsoft
 */
public class Empleado_Servicio_Imp implements Empleado_Servicio{
    
    private Empleado_DAO empDao;
    
    public Empleado_Servicio_Imp() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("Proyecto_IntegradorPU");
        empDao = new Empleado_DAO(emf);
    }

    @Override
    public String Grabar(String codigo, String nombre, String correo, String telefono, String usuario, String contraseña) {
       
        String msg;
        Empleado emp = new Empleado(codigo, nombre, correo, telefono, usuario, contraseña);
        try {
            empDao.create(emp);
            msg = "Empleado Grabado";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        
        return msg;
    }

    @Override
    public String Actualizar(String codigo, String nombre, String correo, String telefono, String usuario, String contraseña) {
        String msg;
        Empleado emp = new Empleado(codigo, nombre, correo, telefono, usuario, contraseña);
        try {
            empDao.edit(emp);
            msg = "Los datos del empleado fueron actualizados correctamente";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        
        return msg;
    }

    @Override
    public String Eliminar(String codigo) {
        String msg;
        Empleado emp = new Empleado(codigo);
        try {
            empDao.destroy(codigo);
            msg = "Empleado Eliminado";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        
        return msg;
    }

    @Override
    public Object[] Buscar(String codigo) {
        Empleado emp = empDao.findEmpleado(codigo);
        if (emp != null) {
            Object[] fila = new Object[6];
            fila[0] = emp.getCodigo();
            fila[1] = emp.getNombre();
            fila[2] = emp.getCorreo();
            fila[3] = emp.getTelefono();
            fila[4] = emp.getUsuario();
            fila[5] = emp.getContraseña();
            return fila;
        }
        return null;
    }

    @Override
    public List Listar() {
        List lista = new ArrayList();
        List lis = empDao.findEmpleadoEntities();
        for (int i = 0; i < lis.size(); i++) {
            
            Empleado emp = (Empleado) lis.get(i);
            Object[] fila = new Object[6];
            fila[0] = emp.getCodigo();
            fila[1] = emp.getNombre();
            fila[2] = emp.getCorreo();
            fila[3] = emp.getTelefono();
            fila[4] = emp.getUsuario();
            fila[5] = emp.getContraseña();
            lista.add(fila);
        }
        return lista;
    }
    
}
