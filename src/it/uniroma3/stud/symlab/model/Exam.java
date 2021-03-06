package it.uniroma3.stud.symlab.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;


@Entity
@NamedQuery(name = "Exam.listWithNoResults", query = "SELECT e FROM Exam e WHERE SIZE(e.results) = 0")
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

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private TypeExam typeExam;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Patient patient;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Doctor doctor;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Result> results;

    @Column
    private Long patientId;

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

    public List<Result> getResults() {
        return results;
    }

    public void setResults(List<Result> results) {
        this.results = results;
    }

    public Long getPatientId() {
        return this.patient.getId();
    }

    public void setPatientId(Long patientId) {
        this.patientId = patientId;
    }

    public Result findResult(String nameInd) {
        int index = 0;
        for (int i = 0; i < results.size(); i++) {
            if (results.get(i).getIndicator().getName().equals(nameInd))
                index = i;
        }
        return results.get(index);
    }
}
