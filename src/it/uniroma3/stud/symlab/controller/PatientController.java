package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.facade.PatientFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;


@ManagedBean
@SessionScoped
public class PatientController {

    private String lastname;
    private String name;
    private Patient patient;
    private Long id;
    private String username;
    private String password;
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
        this.patient = this.patientFacade.createPatient(name, lastname, username, password);
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
