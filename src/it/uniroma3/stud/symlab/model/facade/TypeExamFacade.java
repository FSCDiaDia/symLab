package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.TypeExam;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;


@Stateless
public class TypeExamFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager entityManager;

    public TypeExam createTypeExam(String name, Float price, String description) {
        TypeExam typeExam = new TypeExam(name, description, price);
        entityManager.persist(typeExam);
        return typeExam;
    }

    public TypeExam getTypeExam(Long id) {
        return entityManager.find(TypeExam.class, id);
    }

    public void updateTypeExam(TypeExam typeExam) {
        entityManager.merge(typeExam);
    }

    private void deleteTypeExam(TypeExam typeExam) {
        entityManager.remove(typeExam);
    }

    public void deleteTypeExam(Long id) {
        TypeExam typeExam = entityManager.find(TypeExam.class, id);
        deleteTypeExam(typeExam);
    }


}
