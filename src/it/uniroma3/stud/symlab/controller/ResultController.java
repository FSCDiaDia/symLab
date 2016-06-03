package it.uniroma3.stud.symlab.controller;


import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Indicator;
import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.facade.ResultFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class ResultController {

    private Patient patient;
    @EJB
    private ResultFacade resultFacade;
    private String namePatient;
    private String lastnamePatient;
    private Float value;
    private String nameIndicator;
    private Indicator indicator;
    private Exam exam;


    public String getLastnamePatient() {
        return lastnamePatient;
    }

    public void setLastnamePatient(String lastnamePatient) {
        this.lastnamePatient = lastnamePatient;
    }

    public String getNameIndicator() {
        return nameIndicator;
    }

    public void setNameIndicator(String nameIndicator) {
        this.nameIndicator = nameIndicator;
    }

    public String getNamePatient() {
        return namePatient;
    }

    public void setNamePatient(String namePatient) {
        this.namePatient = namePatient;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public Indicator getIndicator() {
        return indicator;
    }

    public void setIndicator(Indicator indicator) {
        this.indicator = indicator;
    }

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }
}
