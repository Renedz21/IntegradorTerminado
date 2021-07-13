/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Negocio.Carrito;
import Negocio.Cliente;
import Negocio.Compra;
import Negocio.Fecha;
import Negocio.Pago;
import Negocio.Producto;
import Persistencia.Compra_DAO;
import Persistencia.Producto_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador_Producto", urlPatterns = {"/Controlador_Producto"})
public class Controlador_Producto extends HttpServlet {

    Producto_DAO pdao = new Producto_DAO();
    Producto p = new Producto();
    List<Producto> productos = new ArrayList<>();

    List<Carrito> listaCarrito = new ArrayList<>();
    int item;
    double total = 0.0;
    int cantidad = 1;

    int idp;
    Carrito car;
    int idproducto;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        productos = pdao.listar();
        switch (accion) {
            case "Comprar":
                total = 0.0;
                idp = Integer.parseInt(request.getParameter("id"));
                p = pdao.listarId(idp);
                item = item + 1;
                car = new Carrito();
                car.setItem(item);
                car.setIdProducto(p.getId());
                car.setNombre(p.getNombres());
                car.setDesripcion(p.getDescripcion());
                car.setPrecio(p.getPrecio());
                car.setCantidad(cantidad);
                car.setSubTotal(cantidad * p.getPrecio());
                listaCarrito.add(car);
                for (int i = 0; i < listaCarrito.size(); i++) {
                    total = total + listaCarrito.get(i).getSubTotal();
                }
                request.setAttribute("total", total);
                request.setAttribute("carrito", listaCarrito);
                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;
            case "AgregarCarrito":
                int pos = 0;
                cantidad = 1;
                idp = Integer.parseInt(request.getParameter("id"));
                p = pdao.listarId(idp);
                if (listaCarrito.size() > 0) {
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        if (idp == listaCarrito.get(i).getIdProducto()) {
                            pos = i;
                        }
                    }
                    if (idp == listaCarrito.get(pos).getIdProducto()) {
                        cantidad = listaCarrito.get(pos).getCantidad() + cantidad;
                        double subtotal = listaCarrito.get(pos).getPrecio() * cantidad;
                        listaCarrito.get(pos).setCantidad(cantidad);
                        listaCarrito.get(pos).setSubTotal(subtotal);
                    } else {
                        item = item + 1;
                        car = new Carrito();
                        car.setItem(item);
                        car.setIdProducto(p.getId());
                        car.setNombre(p.getNombres());
                        car.setDesripcion(p.getDescripcion());
                        car.setPrecio(p.getPrecio());
                        car.setCantidad(cantidad);
                        car.setSubTotal(cantidad * p.getPrecio());
                        listaCarrito.add(car);
                    }
                } else {
                    item = item + 1;
                    car = new Carrito();
                    car.setItem(item);
                    car.setIdProducto(p.getId());
                    car.setNombre(p.getNombres());
                    car.setDesripcion(p.getDescripcion());
                    car.setPrecio(p.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubTotal(cantidad * p.getPrecio());
                    listaCarrito.add(car);
                }

                request.setAttribute("contador", listaCarrito.size());
                request.getRequestDispatcher("Controlador_Producto?accion=home").forward(request, response);

                break;

            case "Borrar":
                idproducto = Integer.parseInt(request.getParameter("idp"));
                if (listaCarrito != null) {
                    for (int i = 0; i < listaCarrito.size(); i++) {
                        if (listaCarrito.get(i).getIdProducto() == idproducto) {
                            listaCarrito.remove(i);
                        }
                    }
                }
                request.getRequestDispatcher("Controlador_Producto?accion=Carrito").forward(request, response);

                break;
            case "ActualizarCantidad":
                int idpro = Integer.parseInt(request.getParameter("idp"));
                int cant = Integer.parseInt(request.getParameter("cantidad"));
                for (int i = 0; i < listaCarrito.size(); i++) {
                    if (listaCarrito.get(i).getIdProducto() == idpro) {
                        listaCarrito.get(i).setCantidad(cant);
                        double st = listaCarrito.get(i).getPrecio() * cant;
                        listaCarrito.get(i).setSubTotal(st);
                    }
                }
                break;

            case "Carrito":
                total = 0.0;
                request.setAttribute("carrito", listaCarrito);
                for (int i = 0; i < listaCarrito.size(); i++) {
                    total = total + listaCarrito.get(i).getSubTotal();
                }
                request.setAttribute("total", total);
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;
            /*case "Salir":
                listaCarrito = new ArrayList<>();
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;*/

            case "GenerarCompra":
                Cliente cli = new Cliente();
                cli.setIdcliente(2);
                Compra_DAO da = new Compra_DAO();
                Compra compra = new Compra(cli, 1, Fecha.FechaBD(), total, "Cancelado", listaCarrito);
                int res = da.GenerarCompra(compra);
                if (res != 0 && total > 0) {
                    request.getRequestDispatcher("Success.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("Error.jsp").forward(request, response);
                }
                break;
            default:
                request.setAttribute("contador", listaCarrito.size());
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("Productos.jsp").forward(request, response);

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
