/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Negocio.Producto;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Microsoft
 */
public class Producto_DAO {
    Connection con;
    conexion cn = new conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    public Producto listarId(int id){
        String sql = "select * from producto where idProducto="+id;
        Producto p = new Producto();
        try{
            con=cn.getConexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getBinaryStream(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
            }
        }catch(Exception e){}
        return p;
    }

    public List listar() {
        List<Producto> productos = new ArrayList();
        String sql = "select * from producto";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getBinaryStream(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setIdCat(rs.getString(7));
                productos.add(p);
            }

        } catch (Exception e) {
        }
        return productos;
    }

    public void listarImg(int id, HttpServletResponse response) {
        String sql = "select * from producto where idProducto=" + id;
        InputStream is = null;
        OutputStream os = null;
        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            os = response.getOutputStream();
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                is = rs.getBinaryStream("Foto");
            }
            bis = new BufferedInputStream(is);
            bos = new BufferedOutputStream(os);
            int i = 0;
            while((i = bis.read())!= -1){
                bos.write(i);
            }
            
        } catch (Exception e) {
        }
    }
    
    public void Agregar(Producto p){
        String sql = "insert into producto(nombre,foto,descripcion,precio,stock,IdCategoria) values(?,?,?,?,?,?)";
        try{
            con = cn.getConexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, p.getNombres());
            ps.setBlob(2, p.getFoto());
            ps.setString(3, p.getDescripcion());
            ps.setDouble(4, p.getPrecio());
            ps.setInt(5, p.getStock());
            ps.setString(6, p.getIdCat());
            ps.executeUpdate();
        }catch(Exception e){}
    }

    
    
}
