package it.uniroma3.stud.symlab.model;

import javax.persistence.*;
import java.util.Date;
import java.util.Map;


@Entity
public class Exam {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationData;

    @Temporal(TemporalType.DATE)
    @Column(nullable = false)
    private Date achievementData;

    @Column
    @ManyToOne
    private TypeExam typeExam;

    @Column
    @ManyToOne
    private Patient patient;

    @Column
    @ManyToOne
    private Doctor doctor;

    @Column
    @OneToMany
    private Map<Long, Result> results;


    public Exam() {
    }

    public Exam(Date achievementData, Doctor doctor, Patient patient, TypeExam typeExam) {
        this.achievementData = achievementData;
        this.doctor = doctor;
        this.patient = patient;
        this.typeExam = typeExam;
        this.creationData = new Date();
    }

    public Date getAchievementData() {
        return achievementData;
    }

    public void setAchievementData(Date achievementData) {
        this.achievementData = achievementData;
    }

    public Date getCreationData() {
        return creationData;
    }

    public void setCreationData(Date creationData) {
        this.creationData = creationData;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public TypeExam getTypeExam() {
        return typeExam;
    }

    public void setTypeExam(TypeExam typeExam) {
        this.typeExam = typeExam;
    }


    public Map<Long, Result> getResults() {
        return results;
    }

    public void setResults(Map<Long, Result> results) {
        this.results = results;
    }


}
