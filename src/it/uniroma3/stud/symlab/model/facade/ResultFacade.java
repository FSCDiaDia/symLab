package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Result;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class ResultFacade {
    @PersistenceContext(unitName = "symlab-unit")
    private EntityManager em;

    //working in progress
    public Result insertResults() {

        return null;
    }

    //implementare ricerca esami per paziente
    public List<Exam> getAllExams(Long patientId) {
        return em.createQuery("select exam from Exam exam where exam.id == " + patientId).getResultList();
    }
}
