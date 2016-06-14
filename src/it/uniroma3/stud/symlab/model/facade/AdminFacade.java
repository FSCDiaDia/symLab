package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Admin;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;


@Stateless
public class AdminFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager entityManager;


    public Admin findByUsername(String username) {
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Admin> c = cb.createQuery(Admin.class);
        Root<Admin> adminRoot = c.from(Admin.class);
        c.select(adminRoot).where(cb.equal(adminRoot.get("username"), username));
        try {
            return entityManager.createQuery(c).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }

    }

    public Admin getAdmin(Long id) {
        return entityManager.find(Admin.class, id);
    }

    public List<Admin> getAllAdmins() {
        CriteriaQuery<Admin> cq = entityManager.getCriteriaBuilder().createQuery(Admin.class);
        cq.select(cq.from(Admin.class));
        return entityManager.createQuery(cq).getResultList();
    }

    public void updateAdmin(Admin admin) {
        entityManager.merge(admin);
    }

    private void deleteAdmin(Admin admin) {
        entityManager.remove(admin);
    }

    public void deleteAdmin(Long id) {
        Admin admin = entityManager.find(Admin.class, id);
        deleteAdmin(admin);
    }
}
