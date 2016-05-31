package it.uniroma3.stud.symlab.model;

import javax.persistence.*;
import java.util.Date;


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

   /* @Column(nullable = false)
    private List<?> results; */

    @OneToOne
    private TypeExam typeExam;

    @OneToOne
    private Patient patient;

    @OneToOne
    private Doctor doctor;


    public Exam() {
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

   /* public List<?> getResults() {
        return results;
    }

    public void setResults(List<?> results) {
        this.results = results;
    } */

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
}
