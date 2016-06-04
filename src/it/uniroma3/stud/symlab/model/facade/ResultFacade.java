package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Result;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

@Stateless
public class ResultFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager em;

    //working in progress
    public Result insertResults() {

        return null;
    }

    //implementare ricerca esami per paziente
    public List<Exam> getAllExams(Long patientId) {
        CriteriaQuery<Exam> cq = em.getCriteriaBuilder().createQuery(Exam.class);
        cq.select(cq.from(Exam.class));
        return em.createQuery(cq).getResultList();
    }
}
