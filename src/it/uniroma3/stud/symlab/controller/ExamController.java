package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.Doctor;
import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.TypeExam;
import it.uniroma3.stud.symlab.model.facade.DoctorFacade;
import it.uniroma3.stud.symlab.model.facade.ExamFacade;
import it.uniroma3.stud.symlab.model.facade.TypeExamFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import java.util.Date;
import java.util.List;

@ManagedBean
public class ExamController {

    @EJB
    private ExamFacade examFacade;

    @EJB
    private DoctorFacade doctorFacade;

    @EJB
    private TypeExamFacade typeExamFacade;

    @ManagedProperty(value = "#{param.id}")
    private Long id;
    private Date achievementDate;
    private String nameExam;
    private String lastNameDoctor;
    private String nameDoctor;
    private String lastNamePatient;
    private String namePatient;
    private Patient patient;
    private TypeExam typeExam;
    private Exam exam;
    private Doctor doctor;

    public ExamController() {
    }

    public String createExam() {
        this.exam = this.examFacade.createExam(achievementDate, patient, doctor, typeExam);
        return "exam";

    }

    public Date getAchievementDate() {
        return achievementDate;
    }

    public void setAchievementDate(Date achievementDate) {
        this.achievementDate = achievementDate;
    }

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

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public TypeExam getTypeExam() {
        return typeExam;
    }

    public void setTypeExam(TypeExam typeExam) {
        this.typeExam = typeExam;
    }

    public List<Doctor> getDoctors() {
        return doctorFacade.getAllDoctors();
    }

    public List<TypeExam> getTypeExams() {
        return typeExamFacade.getAllTypeExams();
    }
}
