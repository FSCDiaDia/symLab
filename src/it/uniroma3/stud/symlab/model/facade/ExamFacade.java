package it.uniroma3.stud.symlab.model.facade;


import it.uniroma3.stud.symlab.model.*;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.Date;
import java.util.List;

@Stateless
public class ExamFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager entityManager;

    public Exam createExam(Date achievementDate, Patient patient, Doctor doctor, TypeExam typeExam) {
        Exam exam = new Exam(achievementDate, doctor, patient, typeExam);
        entityManager.persist(exam);
        return exam;
    }

    public Exam getExam(Long id) {
        return entityManager.find(Exam.class, id);
    }

    public void updateExam(Exam exam) {
        entityManager.merge(exam);
    }

    private void deleteExam(Exam exam) {
        entityManager.remove(exam);
    }

    public void deleteExam(Long id) {
        Exam exam = entityManager.find(Exam.class, id);
        deleteExam(exam);
    }

    public List<Exam> getListExamsWithNoResults() {
        List resultList = entityManager.createNamedQuery("Exam.listWithNoResults").getResultList();
        return resultList;
    }

    @SuppressWarnings("unchecked")
    public List<Exam> findAllbyId(Long patientId) {

        Query q = entityManager.createQuery("SELECT e FROM Exam AS e WHERE e.patient.id=" + patientId);
        return q.getResultList();
    }

    @SuppressWarnings("unchecked")
    public List<Indicator> setResults(Long id) {
        Query q = entityManager.createQuery("SELECT i FROM Indicator AS i WHERE i.typeExam.id=" + id);
        return q.getResultList();
    }
}
