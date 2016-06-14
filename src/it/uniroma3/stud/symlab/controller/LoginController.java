package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.Admin;
import it.uniroma3.stud.symlab.model.Doctor;
import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.facade.AdminFacade;
import it.uniroma3.stud.symlab.model.facade.DoctorFacade;
import it.uniroma3.stud.symlab.model.facade.PatientFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;


@ManagedBean
@SessionScoped
public class LoginController {
    private String username;
    private String password;

    @EJB
    private AdminFacade adminFacade;
    @EJB
    private PatientFacade patientFacade;
    @EJB
    private DoctorFacade doctorFacade;

    private Admin admin;
    private Doctor doctor;
    private Patient patient;

    public LoginController() {
    }

    public String loginUser() {
        String nextPage = "error";

        if (this.checkAdmin(username)) {
            this.setAdmin(this.adminFacade.findByUsername(username));

            if (this.admin.getPassword().equals(password))
                nextPage = "adminLogin";

        } else if (this.checkDoctor(username)) {
            this.setDoctor(this.doctorFacade.findByUsername(username));

            if (this.doctor.getPassword().equals(password))
                nextPage = "doctorLogin";

        } else if (this.checkPatient(username)) {
            this.setPatient(this.patientFacade.findByUsername(username));

            if (this.patient.getPassword().equals(password))
                nextPage = "patientLogin";
        }
        return nextPage;
    }

    private boolean checkPatient(String username) {
        return patientFacade.findByUsername(username) != null;
    }


    private boolean checkDoctor(String username) {
        return doctorFacade.findByUsername(username) != null;
    }


    private boolean checkAdmin(String username) {
        return adminFacade.findByUsername(username) != null;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

}

