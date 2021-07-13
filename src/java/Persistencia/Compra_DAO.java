/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Negocio.Carrito;
import Negocio.Compra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Microsoft
 */
public class Compra_DAO {
    Connection con;
    conexion cn = new conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    public int GenerarCompra(Compra compra){
        int idcompras;
        String sql = "insert into compras(IdCliente,IdPago,fecha,monto,estado) values(?,?,?,?,?)";
        try{
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, compra.getCliente().getIdcliente());
            ps.setInt(2, compra.getIdpago());
            ps.setString(3, compra.getFecha());
            ps.setDouble(4, compra.getMonto());
            ps.setString(5, compra.getEstado());
            r=ps.executeUpdate();
            
            sql = "Select @@IDENTITY AS IdCompras";
            rs=ps.executeQuery(sql);
            rs.next();
            idcompras=rs.getInt("IdCompras");
            rs.close();
            
            for (Carrito detalle : compra.getDetallecompras()) {
                sql = "insert into detalle_compras(idProducto,idCompras,cantidad,precio) values(?,?,?,?)";
                ps=con.prepareStatement(sql);
                ps.setInt(1, detalle.getIdProducto());
                ps.setInt(2, idcompras);
                ps.setInt(3, detalle.getCantidad());
                ps.setDouble(4, detalle.getPrecio());
                r=ps.executeUpdate();
            }
            
        }catch(Exception e){}
        return r;
    }
    
}
