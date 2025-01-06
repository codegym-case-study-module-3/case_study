package com.codegym.website_product.entity;

import java.util.Objects;

public class Cart {
    private int id;
    private int userId;
    private String createdAt;

    public Cart() {}

    public Cart(int id, int userId, String created_at) {
        this.id = id;
        this.userId = userId;
        this.createdAt = created_at;
    }

    public Cart(int userId, String created_at) {
        this.userId = userId;
        this.createdAt = created_at;
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

    public String getCreated_at() {
        return createdAt;
    }

    public void setCreated_at(String created_at) {
        this.createdAt = created_at;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Cart cart = (Cart) o;
        return id == cart.id;
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
