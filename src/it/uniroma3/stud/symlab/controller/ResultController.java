package it.uniroma3.stud.symlab.controller;


import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Indicator;
import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.Result;
import it.uniroma3.stud.symlab.model.facade.PatientFacade;
import it.uniroma3.stud.symlab.model.facade.ResultFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import java.util.List;

@ManagedBean
public class ResultController {

    private Patient patient;

    @EJB
    private ResultFacade resultFacade;

    @EJB
    private PatientFacade patientFacade;
    private Long patientId;
    private Float value;
    private String nameIndicator;
    private Indicator indicator;
    private Exam exam;
    private Long examId;

    private Result result;


    public ResultController() {
    }

    //working in progress
    public String insertResults() {
        this.result = this.resultFacade.insertResults();
        return "result";
    }

    public String getNameIndicator() {
        return nameIndicator;
    }

    public void setNameIndicator(String nameIndicator) {
        this.nameIndicator = nameIndicator;
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

    public List<Exam> getExams() {
        return this.patientFacade.getAllExams(patientId);
    }


    public Long getPatientId() {
        return patientId;
    }

    public void setPatientId(Long patientId) {
        this.patientId = patientId;
    }

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public Long getExamId() {
        return examId;
    }

    public void setExamId(Long examId) {
        this.examId = examId;
    }
}

