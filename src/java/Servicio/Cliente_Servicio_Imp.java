/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this tclilate file, choose Tools | Tclilates
 * and open the tclilate in the editor.
 */
package Servicio;

import Negocio.Cliente;
import Persistencia.Cliente_DAO;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Microsof
 */
public class Cliente_Servicio_Imp implements Cliente_Servicio {

    private Cliente_DAO cliDao;

    public Cliente_Servicio_Imp() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("Proyecto_IntegradorPU");
        cliDao = new Cliente_DAO(emf);
    }

    @Override
    public String Grabar(int id, String dni, String nombre, String direccion, String telefono, String correo, String usuario, String contraseña) {
        String msg;
        Cliente cli = new Cliente(id, dni, nombre, direccion, telefono, correo, usuario, contraseña);
        try {
            cliDao.create(cli);
            msg = "Cliente Grabado";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        return msg;
    }

    @Override
    public String Actualizar(int id, String dni, String nombre, String direccion, String telefono, String correo, String usuario, String contraseña) {
        String msg;
        Cliente cli = new Cliente(id, dni, nombre, direccion, telefono, correo, usuario, contraseña);
        try {
            cliDao.edit(cli);
            msg = "Los datos del cliente fueron actualizados correctamente";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        return msg;
    }

    @Override
    public String Eliminar(int id) {
        String msg;
        Cliente cli = new Cliente(id);
        try {
            cliDao.destroy(id);
            msg = "Los datos del cliente fueron actualizados correctamente";
        } catch (Exception e) {
            msg = e.getMessage();
        }
        return msg;
    }

    @Override
    public Object[] Buscar(int id) {
        Cliente cli = cliDao.findCliente(id);
        if (cli != null) {
            Object[] fila = new Object[8];
            fila[0] = cli.getIdcliente();
            fila[1] = cli.getDni();
            fila[2] = cli.getNombre();
            fila[3] = cli.getDireccion();
            fila[4] = cli.getTelefono();
            fila[5] = cli.getEmail();
            fila[6] = cli.getUsuario();
            fila[7] = cli.getContraseña();
            return fila;
        }
        return null;
    }

    @Override
    public List Listar() {
        List lista = new ArrayList();
        List lis = cliDao.findClienteEntities();
        for (int i = 0; i < lis.size(); i++) {
            Cliente cli = (Cliente) lis.get(i);
            Object[] fila = new Object[8];
            fila[0] = cli.getIdcliente();
            fila[1] = cli.getDni();
            fila[2] = cli.getNombre();
            fila[3] = cli.getDireccion();
            fila[4] = cli.getTelefono();
            fila[5] = cli.getEmail();
            fila[6] = cli.getUsuario();
            fila[7] = cli.getContraseña();
            lista.add(fila);
        }
        return lista;
    }

}
