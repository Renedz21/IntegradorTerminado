/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Servicio.Empleado_Servicio;
import Servicio.Empleado_Servicio_Imp;
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
@WebServlet(name = "Empleado_Control", urlPatterns = {"/Empleado_Control"})
public class Empleado_Control extends HttpServlet {

    private Empleado_Presentador empPre;
    private Empleado_Servicio empSer;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("acc");

        switch (accion) {
            case "Entrar":
                empPre = new Empleado_Presentador();
                empSer = new Empleado_Servicio_Imp();
                request.getSession().setAttribute("empPre", empPre);
                response.sendRedirect("ListarEmpleado.jsp");
                break;
            case "Entrar2":
                empPre = new Empleado_Presentador();
                empSer = new Empleado_Servicio_Imp();
                request.getSession().setAttribute("empPre", empPre);
                response.sendRedirect("AgregarEmpleado.jsp");
                break;
            case "Entrar3":
                empPre = new Empleado_Presentador();
                empSer = new Empleado_Servicio_Imp();
                request.getSession().setAttribute("empPre", empPre);
                response.sendRedirect("BuscarEmpleado.jsp");
                break;
            case "Entrar4":
                empPre = new Empleado_Presentador();
                empSer = new Empleado_Servicio_Imp();
                request.getSession().setAttribute("empPre", empPre);
                response.sendRedirect("ActualizarEmpleado.jsp");
                break;
            /*case "Entrar5":
                empPre = new Empleado_Presentador();
                empSer = new Empleado_Servicio_Imp();
                request.getSession().setAttribute("empPre", empPre);
                response.sendRedirect("EliminarEmpleado.jsp");
                break;*/
        }

        switch (accion) {
            case "Grabar":
                String codigo = request.getParameter("cod");
                String nombre = request.getParameter("name");
                String correo = request.getParameter("mail");
                String telefono = request.getParameter("telf");
                String usuario = request.getParameter("usser");
                String contraseña = request.getParameter("pass");
                empPre.setMensaje(empSer.Grabar(codigo, nombre, correo, telefono, usuario, contraseña));
                response.sendRedirect("AgregarEmpleado.jsp");
                break;
        }

        if (accion.equals("Grabar")) {

        }

        if (accion.equals("Actualizar")) {
            String codigo = request.getParameter("cod");
            String nombre = request.getParameter("name");
            String correo = request.getParameter("mail");
            String telefono = request.getParameter("telf");
            String usuario = request.getParameter("usser");
            String contraseña = request.getParameter("pass");
            empPre.setMensaje(empSer.Actualizar(codigo, nombre, correo, telefono, usuario, contraseña));
        }
        if (accion.equals("Eliminar")) {
            String codigo = request.getParameter("cod");
            empPre.setMensaje(empSer.Eliminar(codigo));
        }
        if (accion.equals("Buscar")) {
            String codigo = request.getParameter("cod");
            Object[] fila = empSer.Buscar(codigo);
            if (fila != null) {
                empPre.setFil(fila);
            } else {
                empPre.setMensaje("El empleado no existe");
            }
        }
        if (accion.equals("Listar")) {
            empPre.setLista(empSer.Listar());
            response.sendRedirect("ListarEmpleado.jsp");

        }
        if (accion.equals("Limpiar")) {
            empPre.setMensaje("");
            Object[] fila = {"", "", "", "", "", ""};
            empPre.setFil(fila);
            List lis = new ArrayList();
            lis.add(fila);
            empPre.setLista(lis);
        }

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
