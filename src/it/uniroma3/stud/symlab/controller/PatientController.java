package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.facade.PatientFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
public class PatientController {

    private String lastname;
    private String name;
    private Patient patient;
    @ManagedProperty(value = "#{param.id}")
    private Long id;
    @EJB
    private PatientFacade patientFacade;

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String createPatient() {
        this.patient = this.patientFacade.createPatient(name, lastname);
        return "patient";

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
}
