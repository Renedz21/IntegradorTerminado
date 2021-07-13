/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Microsoft
 */
public class Cliente_Presentador {
    private String mensaje = "";
    private Object[] fil = {"", "", "", "", "", "", "", ""};
    private List lista = new ArrayList();

    public Cliente_Presentador() {
        lista.add(fil);
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public Object[] getFil() {
        return fil;
    }

    public void setFil(Object[] fil) {
        this.fil = fil;
    }

    public List getLista() {
        return lista;
    }

    public void setLista(List lista) {
        this.lista = lista;
    }
    
}
