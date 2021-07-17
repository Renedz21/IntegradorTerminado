/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Negocio.Compras;
import Negocio.Pago_1;
import Persistencia.exceptions.IllegalOrphanException;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Microsoft
 */
public class Pago_1JpaController implements Serializable {

    public Pago_1JpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Pago_1 pago_1) {
        if (pago_1.getComprasList() == null) {
            pago_1.setComprasList(new ArrayList<Compras>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Compras> attachedComprasList = new ArrayList<Compras>();
            for (Compras comprasListComprasToAttach : pago_1.getComprasList()) {
                comprasListComprasToAttach = em.getReference(comprasListComprasToAttach.getClass(), comprasListComprasToAttach.getIdCompras());
                attachedComprasList.add(comprasListComprasToAttach);
            }
            pago_1.setComprasList(attachedComprasList);
            em.persist(pago_1);
            for (Compras comprasListCompras : pago_1.getComprasList()) {
                Pago_1 oldIdPagoOfComprasListCompras = comprasListCompras.getIdPago();
                comprasListCompras.setIdPago(pago_1);
                comprasListCompras = em.merge(comprasListCompras);
                if (oldIdPagoOfComprasListCompras != null) {
                    oldIdPagoOfComprasListCompras.getComprasList().remove(comprasListCompras);
                    oldIdPagoOfComprasListCompras = em.merge(oldIdPagoOfComprasListCompras);
                }
            }
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Pago_1 pago_1) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Pago_1 persistentPago_1 = em.find(Pago_1.class, pago_1.getIdPago());
            List<Compras> comprasListOld = persistentPago_1.getComprasList();
            List<Compras> comprasListNew = pago_1.getComprasList();
            List<String> illegalOrphanMessages = null;
            for (Compras comprasListOldCompras : comprasListOld) {
                if (!comprasListNew.contains(comprasListOldCompras)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Compras " + comprasListOldCompras + " since its idPago field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Compras> attachedComprasListNew = new ArrayList<Compras>();
            for (Compras comprasListNewComprasToAttach : comprasListNew) {
                comprasListNewComprasToAttach = em.getReference(comprasListNewComprasToAttach.getClass(), comprasListNewComprasToAttach.getIdCompras());
                attachedComprasListNew.add(comprasListNewComprasToAttach);
            }
            comprasListNew = attachedComprasListNew;
            pago_1.setComprasList(comprasListNew);
            pago_1 = em.merge(pago_1);
            for (Compras comprasListNewCompras : comprasListNew) {
                if (!comprasListOld.contains(comprasListNewCompras)) {
                    Pago_1 oldIdPagoOfComprasListNewCompras = comprasListNewCompras.getIdPago();
                    comprasListNewCompras.setIdPago(pago_1);
                    comprasListNewCompras = em.merge(comprasListNewCompras);
                    if (oldIdPagoOfComprasListNewCompras != null && !oldIdPagoOfComprasListNewCompras.equals(pago_1)) {
                        oldIdPagoOfComprasListNewCompras.getComprasList().remove(comprasListNewCompras);
                        oldIdPagoOfComprasListNewCompras = em.merge(oldIdPagoOfComprasListNewCompras);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = pago_1.getIdPago();
                if (findPago_1(id) == null) {
                    throw new NonexistentEntityException("The pago_1 with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Pago_1 pago_1;
            try {
                pago_1 = em.getReference(Pago_1.class, id);
                pago_1.getIdPago();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The pago_1 with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Compras> comprasListOrphanCheck = pago_1.getComprasList();
            for (Compras comprasListOrphanCheckCompras : comprasListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Pago_1 (" + pago_1 + ") cannot be destroyed since the Compras " + comprasListOrphanCheckCompras + " in its comprasList field has a non-nullable idPago field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            em.remove(pago_1);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Pago_1> findPago_1Entities() {
        return findPago_1Entities(true, -1, -1);
    }

    public List<Pago_1> findPago_1Entities(int maxResults, int firstResult) {
        return findPago_1Entities(false, maxResults, firstResult);
    }

    private List<Pago_1> findPago_1Entities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Pago_1.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Pago_1 findPago_1(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Pago_1.class, id);
        } finally {
            em.close();
        }
    }

    public int getPago_1Count() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Pago_1> rt = cq.from(Pago_1.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
