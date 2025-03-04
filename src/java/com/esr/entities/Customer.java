/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esr.entities;

public class Customer {

    private int id;
    private String name;
    private String email;
    private String password;
    private int restaurantId;
    
    public Customer(int id, String name, String email, String password,int restaurantId) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public Customer() {
    }

    public Customer(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.restaurantId = restaurantId;
    }
    
    
//    getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}