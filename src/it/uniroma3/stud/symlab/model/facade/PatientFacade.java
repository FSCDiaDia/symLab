package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Patient;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Stateless
public class PatientFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager entityManager;

    public Patient createPatient(String name, String lastname, String username, String password) {
        Patient patient = new Patient(name, lastname, username, password);
        entityManager.persist(patient);
        return patient;
    }

    public Patient getPatient(Long id) {
        return entityManager.find(Patient.class, id);
    }

    public void updatePatient(Patient patient) {
        entityManager.merge(patient);
    }

    private void deletePatient(Patient patient) {
        entityManager.remove(patient);
    }

    public void deletePatient(Long id) {
        Patient patient = entityManager.find(Patient.class, id);
        deletePatient(patient);
    }

    public List<Patient> getAllPatients() {
        CriteriaQuery<Patient> cq = entityManager.getCriteriaBuilder().createQuery(Patient.class);
        cq.select(cq.from(Patient.class));
        return entityManager.createQuery(cq).getResultList();
    }

    //implementare
    public List<Exam> getAllExams(Long patientId) {
        return null;
    }

    public Patient findByUsername(String username) {
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Patient> c = cb.createQuery(Patient.class);
        Root<Patient> patientRoot = c.from(Patient.class);
        c.select(patientRoot).where(cb.equal(patientRoot.get("username"), username));
        try {
            return entityManager.createQuery(c).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public Long getIdByName(String name) {
        Query query = entityManager.createQuery("SELECT OBJECT(p) FROM Patient AS p WHERE p.name=?1");
        query.setParameter(1, name);

        List<Patient> patients = query.getResultList();
        if (patients.isEmpty()) {
            return null;
        } else {
            Patient p = patients.get(0);
            return p.getId();
        }
    }
}