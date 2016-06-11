package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.Doctor;
import it.uniroma3.stud.symlab.model.facade.DoctorFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

/**
 * Created by serena on 03/06/16.
 */


@ManagedBean
public class DoctorController {

    private String lastname;
    private String name;
    private Doctor doctor;
    private String specialization;

    @ManagedProperty(value = "#{param.id}")
    private Long id;
    @EJB
    private DoctorFacade doctorFacade;

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String createDoctor() {
        this.doctor = this.doctorFacade.createDoctor(name, lastname, specialization);
        return "doctor";

    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

}
