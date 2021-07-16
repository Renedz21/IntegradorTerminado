/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Negocio.Producto;
import Persistencia.Producto_DAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Microsoft
 */
@WebServlet(name = "Articulo_Control", urlPatterns = {"/Articulo_Control"})
@MultipartConfig
public class Articulo_Control extends HttpServlet {

    //private Articulo_Presentador cliPer;
    //private Articulo_Servicio cliSer;
    Producto p = new Producto();
    Producto_DAO pdao = new Producto_DAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("acc");
        
        if (accion.equalsIgnoreCase("Entrar1")) {
            request.getRequestDispatcher("AgregarArticulo.jsp").forward(request, response);
        }
        if (accion.equalsIgnoreCase("Entrar2")) {
            request.getRequestDispatcher("ListarArticulo.jsp").forward(request, response);
        }

        if (accion.equalsIgnoreCase("Grabar")) {
            String nombre = request.getParameter("nombre");
            Part foto = request.getPart("foto");
            InputStream input = foto.getInputStream();
            String texto = request.getParameter("info");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int stock = Integer.parseInt(request.getParameter("stock"));
            String icate = request.getParameter("cat");
            p.setNombres(nombre);
            p.setFoto(input);
            p.setDescripcion(texto);
            p.setPrecio(precio);
            p.setStock(stock);
            p.setIdCat(icate);
            pdao.Agregar(p);
            //request.getRequestDispatcher("Articulo_Control?accion=Mantenimiento_Articulos").forward(request, response);
        }
        
        if (accion.equalsIgnoreCase("Listar")) {
            List<Producto>lista = pdao.listar();
            request.setAttribute("lista", lista);
            request.getRequestDispatcher("Mantenimiento_Articulos.jsp").forward(request, response);
        }
        
         response.sendRedirect("Mantenimiento_Articulos.jsp");

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
