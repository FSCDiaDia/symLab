package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Doctor;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by serena on 03/06/16.
 */

@Stateless
public class DoctorFacade {

    @PersistenceContext(unitName = "symlab-unit")
    private EntityManager em;

    public Doctor createDoctor(String name, String lastname, String specialization) {
        Doctor doctor = new Doctor(name, lastname, specialization);
        em.persist(doctor);
        return doctor;
    }

    public Doctor getDoctor(Long id) {
        return em.find(Doctor.class, id);
    }

    public void updateDoctor(Doctor doctor) {
        em.merge(doctor);
    }

    private void deleteDoctor(Doctor doctor) {
        em.remove(doctor);
    }

    public void deleteDoctor(Long id) {
        Doctor doctor = em.find(Doctor.class, id);
        deleteDoctor(doctor);
    }
}
