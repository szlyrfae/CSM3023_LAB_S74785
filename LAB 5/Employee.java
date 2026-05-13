package com.lab.bean;

public class Employee {
    private String empId;
    private String name;
    private String department;
    private double basicSalary;

    // Empty constructor
    public Employee() {}

    // Parameterized constructor (optional but handy)
    public Employee(String empId, String name, String department, double basicSalary) {
        this.empId = empId;
        this.name = name;
        this.department = department;
        this.basicSalary = basicSalary;
    }

    // Getters and Setters
    public String getEmpId() { return empId; }
    public void setEmpId(String empId) { this.empId = empId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }

    public double getBasicSalary() { return basicSalary; }
    public void setBasicSalary(double basicSalary) { this.basicSalary = basicSalary; }
}