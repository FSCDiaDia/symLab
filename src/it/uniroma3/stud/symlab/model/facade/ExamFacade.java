package it.uniroma3.stud.symlab.model.facade;


import it.uniroma3.stud.symlab.model.Doctor;
import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.TypeExam;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;

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
}
