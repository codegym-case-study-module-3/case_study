//Đây là User.java
package com.codegym.website_product.entity;

import java.util.Objects;

public class User {
    private int id;
    private String fullName;
    private String dob;
    private String gender;
    private String phone_number;
    private String address;
    private int account_id;

    public User() {}
    public User(int id, String fullName, String dob, String gender, String phone_number, String address, int account_id) {
        this.id = id;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.phone_number = phone_number;
        this.address = address;
        this.account_id = account_id;
    }

    public User(int id, String fullName, String dob, String gender, String phone_number, String address) {
        this.id = id;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.phone_number = phone_number;
        this.address = address;
    }

    public User(String fullName, String dob, String gender, String phone_number, String address , int account_id) {
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.phone_number = phone_number;
        this.address = address;
        this.account_id = account_id;
    }

    public User(String fullName, int account_id) {
        this.fullName = fullName;
        this.account_id = account_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        User user = (User) o;
        return id == user.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), id);
    }
}
