package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Indicator;
import it.uniroma3.stud.symlab.model.Requirement;
import it.uniroma3.stud.symlab.model.TypeExam;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;


@Stateless
public class TypeExamFacade {
    @PersistenceContext(unitName = "symlab-unit")
    private EntityManager em;

    public TypeExam createTypeExam(String name, Float price, String description, String[] indicatorStrings, String[] requirements) {
        TypeExam typeExam = new TypeExam(name, price, description);
        em.persist(typeExam);
        for (String indicatorString : indicatorStrings) {
            Indicator indicator = new Indicator(indicatorString, typeExam);
            em.persist(indicator);
        }
        for (String reqString : requirements) {
            Requirement req = new Requirement(reqString, typeExam);
            em.persist(req);
        }
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

    @SuppressWarnings("unchecked")
    public List<Requirement> getAllReq(Long id) {
        Query q = em.createQuery("SELECT r FROM Requirement AS r WHERE r.typeExam.id=" + id);
        return q.getResultList();
    }

    public List<Indicator> getAllInd(Long aLong) {
        Query q = em.createQuery("SELECT i FROM Indicator AS i WHERE i.typeExam.id=" + aLong);
        return q.getResultList();
    }
}
