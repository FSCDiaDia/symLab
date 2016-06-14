package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.Doctor;
import it.uniroma3.stud.symlab.model.Exam;
import it.uniroma3.stud.symlab.model.Patient;
import it.uniroma3.stud.symlab.model.TypeExam;
import it.uniroma3.stud.symlab.model.facade.*;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@ManagedBean
public class ExamController {

    @EJB
    private ExamFacade examFacade;

    @EJB
    private DoctorFacade doctorFacade;

    @EJB
    private TypeExamFacade typeExamFacade;

    @EJB
    private PatientFacade patientFacade;

    @EJB
    private ResultFacade resultFacade;

    @ManagedProperty(value = "#{param.id}")
    private Long id;
    private Date achievementDate;
    private Patient patient;
    private TypeExam typeExam;
    private Long typeExamId;
    private Exam exam;
    private Doctor doctor;
    private Long patientId;
    private Long doctorId;
    private Map<Long, String> indicators = new HashMap<>();

    public ExamController() {
    }

    public String createExam() {
        this.exam = this.examFacade.createExam(achievementDate, patientFacade.getPatient(patientId), doctorFacade.getDoctor(doctorId), typeExamFacade.getTypeExam(typeExamId));
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

    public List<Patient> getPatients() {
        return patientFacade.getAllPatients();
    }

    public Long getTypeExamId() {
        return typeExamId;
    }

    public void setTypeExamId(Long typeExamId) {
        this.typeExamId = typeExamId;
    }

    public Long getPatientId() {
        return patientId;
    }

    public void setPatientId(Long patientId) {
        this.patientId = patientId;
    }

    public Long getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Long doctorId) {
        this.doctorId = doctorId;
    }

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }

    public List<Exam> getListExamsSample() {
        Patient patient = this.patientFacade.getAllPatients().get(0);
        return examFacade.getListExamsByPatient(patient);
    }

    public List<Exam> getListExamsWithNoResults() {
        return examFacade.getListExamsWithNoResults();
    }

    public String getLoadExamFromQueryString() {
        this.exam = examFacade.getExam(id);
        return "";
    }

    public Map<Long, String> getIndicators() {
        return indicators;
    }

    public void setIndicators(Map<Long, String> indicators) {
        this.indicators = indicators;
    }

    public String insertResults() {
        for (Map.Entry<Long, String> longStringEntry : indicators.entrySet()) {
            Long key = longStringEntry.getKey();
            String value = longStringEntry.getValue();
            System.out.println(key);
            System.out.println(value);
        }
        return "result";
    }
}
