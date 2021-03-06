package com.travelagency.entity;

import java.time.LocalDate;

public class Client extends User{

    private String first_name;
    private String last_name;
    private int age;
    private String phone;
    private String email;
    private LocalDate customerFrom;

    public Client(String login, String password, int id,
                  String first_name, String last_name, int age, String phone, String email, LocalDate customerFrom) {
        super(id, login, password);
        this.first_name = first_name;
        this.last_name = last_name;
        this.age = age;
        this.phone = phone;
        this.email = email;
        this.customerFrom = customerFrom;
    }

    public String getFirstName() {
        return first_name;
    }

    public void setFirstName(String first_name) {
        this.first_name = first_name;
    }

    public String getLastName() {
        return last_name;
    }

    public void setLastName(String last_name) {
        this.last_name = last_name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getCustomerFrom() {
        return customerFrom;
    }

    public void setCustomerFrom(LocalDate customerFrom) {
        this.customerFrom = customerFrom;
    }
}
