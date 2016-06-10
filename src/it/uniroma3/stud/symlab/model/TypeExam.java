package it.uniroma3.stud.symlab.model;

import javax.persistence.*;
import java.util.List;
import java.util.Map;


@Entity
public class TypeExam {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private float price;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Requirement> requirements;

    @OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
    private Map<Long, Indicator> indicators;


    public TypeExam() {
    }

    public TypeExam(String name, float price, String description) {
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

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Requirement> getRequirements() {
        return requirements;
    }

    public void setRequirements(List<Requirement> requirements) {
        this.requirements = requirements;
    }


    public Map<Long, Indicator> getIndicators() {
        return indicators;
    }

    public void setIndicators(Map<Long, Indicator> indicators) {
        this.indicators = indicators;
    }
}
