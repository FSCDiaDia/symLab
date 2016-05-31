package it.uniroma3.stud.symlab.controller;

import it.uniroma3.stud.symlab.model.TypeExam;
import it.uniroma3.stud.symlab.model.facade.TypeExamFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

/**
 * Created by federicoYusteenappar on 30/05/16.
 */
@ManagedBean
public class TypeExamController {

    @EJB
    TypeExamFacade typeExamFacade;
    @ManagedProperty(value = "#{param.code}")
    private Long code;
    private String name;
    private String description;
    private Float price;
    private TypeExam typeExam;

    public TypeExam getTypeExam() {
        return typeExam;
    }

    public void setTypeExam(TypeExam typeExam) {
        this.typeExam = typeExam;
    }

    public String createTypeExam() {
        this.typeExam = this.typeExamFacade.createTypeExam(name, price, description);
        return "typeExam";

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getCode() {
        return code;
    }

    public void setCode(Long id) {
        this.code = code;
    }
}
