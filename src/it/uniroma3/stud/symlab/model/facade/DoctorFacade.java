package it.uniroma3.stud.symlab.model.facade;

import it.uniroma3.stud.symlab.model.Doctor;
import it.uniroma3.stud.symlab.model.Exam;

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
public class DoctorFacade {

    @PersistenceContext(unitName = "symlab-unit")
    private EntityManager em;

    public Doctor createDoctor(String name, String lastname, String specialization, String username, String password) {
        Doctor doctor = new Doctor(name, lastname, specialization, username, password);
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

    public Doctor findByUsername(String username) {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Doctor> c = cb.createQuery(Doctor.class);
        Root<Doctor> doctorRoot = c.from(Doctor.class);
        c.select(doctorRoot).where(cb.equal(doctorRoot.get("username"), username));
        try {
            return em.createQuery(c).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }

    }

    @SuppressWarnings("unchecked")
    public List<Exam> ExamsfindByfullName(String name, String lastname) {
        Query q = em.createQuery("SELECT e FROM Exam e WHERE e.doctor.name='" + name + "' AND e.doctor.lastname='" + lastname + "'");
        return q.getResultList();
    }
}
