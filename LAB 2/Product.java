/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.model;

/**
 * author: MUHAMMAD AIMAN BIN ZAMRI
 * Matriks No: S74699
 * LAB:2 EXRECISE
 * PROGRAM:CSM3023
 * DATE: 7/4/2026
 */
public class Product {
    private int id;
    private String name;
    private String category;
    private double price;
    private int quantity;

    // Constructor kosong (WAJIB)
    public Product() {}

    // Constructor tanpa id (Insert)
    public Product(String name, String category, double price,int quantity) {
        this.name = name;
        this.category = category;
        this.price = price;
        this.quantity=quantity;
    }

    // Constructor dengan id (Update/Delete)
    public Product(int id,String name, String category, double price,int quantity) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.price = price;
        this.quantity=quantity;
    }

    // Getter & Setter
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    
    public int getQty() { return quantity; }
    public void setQty(int quantity) { this.quantity = quantity; }

}
