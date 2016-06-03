package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Doctor;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

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

    public List<Doctor> getAllDoctors() {
        CriteriaQuery<Doctor> cq = em.getCriteriaBuilder().createQuery(Doctor.class);
        cq.select(cq.from(Doctor.class));
        return em.createQuery(cq).getResultList();
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
