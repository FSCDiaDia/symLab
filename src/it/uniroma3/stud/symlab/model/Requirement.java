package it.uniroma3.stud.symlab.model;

import javax.persistence.*;


@Entity
public class Requirement {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String value;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private TypeExam typeExam;

    public Requirement() {
    }

    public Requirement(String value, TypeExam typeExam) {
        this.value = value;
        this.typeExam = typeExam;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
