package it.uniroma3.stud.symlab.model.facade;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class ResultFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager entityManager;

}
