package it.uniroma3.stud.symlab.model;

import javax.persistence.*;


@Entity
public class Indicator {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String name;

    @ManyToOne(fetch = FetchType.EAGER)
    private TypeExam typeExam;

    public Indicator() {
    }

    public long getId() {

        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public TypeExam getTypeExam() {
        return typeExam;
    }

    public void setTypeExam(TypeExam typeExam) {
        this.typeExam = typeExam;
    }

}
