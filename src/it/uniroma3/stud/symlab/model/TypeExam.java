package it.uniroma3.stud.symlab.model;

import javax.persistence.*;


@Entity
public class TypeExam {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long code;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private float price;

    /*@OneToMany
    @Column(nullable = false)
    private List<?> requirements;

    @Column
    private List<?> values;*/

    public TypeExam() {
    }

    public TypeExam(String description, String name, float price) {
        this.description = description;
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getCode() {
        return this.code;
    }

    public void setCode(long id) {
        this.code = code;
    }

}
