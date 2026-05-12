package com.lab.bean;

public class StudentBean {

    private String name;
    private String matricNo;
// Empty Default Constructor (Compulsory for JavaBeans)

    public StudentBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMatricNo() {
        return matricNo;
    }

    public void setMatricNo(String matricNo) {
        this.matricNo = matricNo;
    }
}
