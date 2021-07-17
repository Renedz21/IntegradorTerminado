/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Microsoft
 */
@Entity
@Table(name = "pago")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pago_1.findAll", query = "SELECT p FROM Pago_1 p")
    , @NamedQuery(name = "Pago_1.findByIdPago", query = "SELECT p FROM Pago_1 p WHERE p.idPago = :idPago")
    , @NamedQuery(name = "Pago_1.findByMonto", query = "SELECT p FROM Pago_1 p WHERE p.monto = :monto")})
public class Pago_1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "IdPago")
    private Integer idPago;
    @Basic(optional = false)
    @Column(name = "monto")
    private double monto;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPago")
    private List<Compras> comprasList;

    public Pago_1() {
    }

    public Pago_1(Integer idPago) {
        this.idPago = idPago;
    }

    public Pago_1(Integer idPago, double monto) {
        this.idPago = idPago;
        this.monto = monto;
    }

    public Integer getIdPago() {
        return idPago;
    }

    public void setIdPago(Integer idPago) {
        this.idPago = idPago;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    @XmlTransient
    public List<Compras> getComprasList() {
        return comprasList;
    }

    public void setComprasList(List<Compras> comprasList) {
        this.comprasList = comprasList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPago != null ? idPago.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pago_1)) {
            return false;
        }
        Pago_1 other = (Pago_1) object;
        if ((this.idPago == null && other.idPago != null) || (this.idPago != null && !this.idPago.equals(other.idPago))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Negocio.Pago_1[ idPago=" + idPago + " ]";
    }
    
}
