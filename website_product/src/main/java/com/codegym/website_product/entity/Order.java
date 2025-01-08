package com.codegym.website_product.entity;

import java.util.Objects;

public class Order {
    private int id;
    private int userId;
    private int status;
    private double price;
    private String createdAt;
    private String fullName;
    public Order() {}
    public Order(int id, int userId, String fullName, int status, Double price, String createdAt) {
        this.id = id;
        this.userId = userId;
        this.fullName = fullName;
        this.status = status;
        this.price = price;
        this.createdAt = createdAt;
    }
    public Order(int id, int userId, int status, double price, String createdAt) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.price = price;
        this.createdAt = createdAt;
    }

    public Order(int userId, int status, double price, String createdAt) {
        this.userId = userId;
        this.status = status;
        this.price = price;
        this.createdAt = createdAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return id == order.id;
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
