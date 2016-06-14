package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Indicator;
import it.uniroma3.stud.symlab.model.Result;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class ResultFacade {
    @PersistenceContext(unitName = "symlab-unit")
    private EntityManager em;

    public void insertResult(float value, Indicator indicator, Exam exam) {
        Result result = new Result(value, indicator, exam);
        em.persist(result);
    }
}
