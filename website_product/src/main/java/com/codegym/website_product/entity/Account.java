package com.codegym.website_product.entity;

public class Account {
    private long id;
    private long user_id;
    private String email;
    private String password;
    private String role;

    public Account(long id, long user_id, String email, String password, String role) {
        this.id = id;
        this.user_id = user_id;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public Account(long user_id, String email, String password, String role) {
        this.user_id = user_id;
        this.email = email;
        this.password = password;
        this.role = role;
    }



    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
