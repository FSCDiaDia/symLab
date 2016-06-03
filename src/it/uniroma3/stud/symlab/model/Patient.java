package it.uniroma3.stud.symlab.model;

import javax.persistence.*;
import java.util.Map;


@Entity
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String lastname;

    @Column(nullable = false)
    private String name;

    @Column
    @OneToMany
    private Map<Long, Exam> exam;

    public Patient() {

    }

    public Patient(String lastname, String name) {
        this.lastname = lastname;
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public Map<Long, Exam> getExam() {
        return exam;
    }

    public void setExam(Map<Long, Exam> exam) {
        this.exam = exam;
    }
}
