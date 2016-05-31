package it.uniroma3.stud.symlab.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class Main {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("it.uniroma3.stud.symlab-unit");
        EntityManager em = emf.createEntityManager();
    }
}
