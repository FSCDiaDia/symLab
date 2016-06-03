package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.TypeExam;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;


@Stateless
public class TypeExamFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager em;

    public TypeExam createTypeExam(String name, Float price, String description) {
        TypeExam typeExam = new TypeExam(name, description, price);
        em.persist(typeExam);
        return typeExam;
    }

    public TypeExam getTypeExam(Long id) {
        return em.find(TypeExam.class, id);
    }

    public void updateTypeExam(TypeExam typeExam) {
        em.merge(typeExam);
    }

    private void deleteTypeExam(TypeExam typeExam) {
        em.remove(typeExam);
    }

    public void deleteTypeExam(Long id) {
        TypeExam typeExam = em.find(TypeExam.class, id);
        deleteTypeExam(typeExam);
    }

    public List<TypeExam> getAllTypeExams() {
        CriteriaQuery<TypeExam> cq = em.getCriteriaBuilder().createQuery(TypeExam.class);
        cq.select(cq.from(TypeExam.class));
        return em.createQuery(cq).getResultList();
    }
}
