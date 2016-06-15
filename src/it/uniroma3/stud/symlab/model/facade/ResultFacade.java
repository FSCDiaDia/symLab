package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Exam;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
public class ResultFacade {
    @PersistenceContext(unitName = "symlab-unit")
    private EntityManager em;

    public List<Exam> findAllbyId(Long id) {

        Query query = em.createQuery("SELECT e FROM Exam AS e WHERE e.patient.id=" + id);

        return query.getResultList();
    }
}
