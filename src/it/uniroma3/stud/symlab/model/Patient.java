package it.uniroma3.stud.symlab.model;

import javax.persistence.*;
import java.util.List;


@Entity
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String lastname;

    @Column(nullable = false)
    private String name;

    @OneToMany
    private List<Exam> exams;

    public Patient() {

    }

    public Patient(String name, String lastname) {
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

    public List<Exam> getExams() {
        return exams;
    }

    public void setExams(List<Exam> exams) {
        this.exams = exams;
    }

    public String getFullName() {
        return getLastname() + " " + getName();
    }
}
