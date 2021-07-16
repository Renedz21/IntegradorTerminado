/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Servicio.Cliente_Servicio;
import Servicio.Cliente_Servicio_Imp;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Microsoft
 */
@WebServlet(name = "Cliente_Control", urlPatterns = {"/Cliente_Control"})
public class Cliente_Control extends HttpServlet {
    private Cliente_Presentador cliPer;
    private Cliente_Servicio cliSer;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("acc");
        
        switch (accion) {
            case "Entrar":
                cliPer = new Cliente_Presentador();
                cliSer = new Cliente_Servicio_Imp();
                request.getSession().setAttribute("cliPer", cliPer);
                response.sendRedirect("ListarCliente.jsp");
                break;
            case "Entrar2":
                cliPer = new Cliente_Presentador();
                cliSer = new Cliente_Servicio_Imp();
                request.getSession().setAttribute("cliPer", cliPer);
                response.sendRedirect("AgregarCliente.jsp");
                break;
            case "Entrar3":
                cliPer = new Cliente_Presentador();
                cliSer = new Cliente_Servicio_Imp();
                request.getSession().setAttribute("cliPer", cliPer);
                response.sendRedirect("BuscarCliente.jsp");
                break;
            case "Entrar4":
                cliPer = new Cliente_Presentador();
                cliSer = new Cliente_Servicio_Imp();
                request.getSession().setAttribute("cliPer", cliPer);
                response.sendRedirect("ActualizarCliente.jsp");
                break;
            /*case "Entrar5":
                cliPer = new Cliente_Presentador();
                cliSer = new Cliente_Servicio_Imp();
                request.getSession().setAttribute("cliPer", cliPer);
                response.sendRedirect("EliminarCliente.jsp");
                break;*/
        }


        if (accion.equals("Grabar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String dni = request.getParameter("dni");
            String nombre = request.getParameter("name");
            String direccion = request.getParameter("dire");
            String telefono = request.getParameter("telf");
            String email = request.getParameter("mail");
            String usser = request.getParameter("usser");
            String pass = request.getParameter("pass");
            cliPer.setMensaje(cliSer.Grabar(id, dni, nombre, direccion, telefono, email, usser, pass));
        }

        if (accion.equals("Actualizar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String dni = request.getParameter("dni");
            String nombre = request.getParameter("name");
            String direccion = request.getParameter("dire");
            String telefono = request.getParameter("telf");
            String email = request.getParameter("email");
            String usser = request.getParameter("usser");
            String pass = request.getParameter("pass");
            cliPer.setMensaje(cliSer.Actualizar(id, dni, nombre, direccion, telefono, email, usser, pass));
        }
        if (accion.equals("Eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            cliPer.setMensaje(cliSer.Eliminar(id));
        }
        if (accion.equals("Buscar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Object[] fila = cliSer.Buscar(id);
            if (fila != null) {
                cliPer.setFil(fila);
            } else {
                cliPer.setMensaje("El cliente no existe");
            }
        }
        if (accion.equals("Listar")) {
            cliPer.setLista(cliSer.Listar());
        }
        if (accion.equals("Limpiar")) {
            cliPer.setMensaje("");
            Object[] fila = {"", "", "", "", "", "", "", ""};
            cliPer.setFil(fila);
            List lis = new ArrayList();
            lis.add(fila);
            cliPer.setLista(lis);
        }

        response.sendRedirect("Mantenimiento_Clientes.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
