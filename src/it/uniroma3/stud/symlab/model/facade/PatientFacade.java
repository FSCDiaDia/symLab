package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Patient;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class PatientFacade {
    @PersistenceContext(unitName = "symlab-unit")
    EntityManager entityManager;

    public Patient createPatient(String name, String lastname) {
        Patient patient = new Patient(name, lastname);
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
}