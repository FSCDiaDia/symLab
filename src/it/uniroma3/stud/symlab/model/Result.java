package it.uniroma3.stud.symlab.model;

import javax.persistence.*;


@Entity
public class Result {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private float value;

    @OneToOne
    private Indicator indicator;

    @ManyToOne
    private Exam exam;

    public Result() {
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }

    public Indicator getIndicator() {
        return indicator;
    }

    public void setIndicator(Indicator indicator) {
        this.indicator = indicator;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }
}
