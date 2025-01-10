package com.codegym.website_product.entity;

import java.util.Objects;

public class ProductSpecification {
    private int id;
    private int productId;
    private String name;
    private String description;
    private String nameInfo;
    private String textInfo;

    public ProductSpecification() {}

    public ProductSpecification(int id, int productId, String nameInfo, String textInfo) {
        this.id = id;
        this.productId = productId;
        this.nameInfo = nameInfo;
        this.textInfo = textInfo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public String getNameInfo() {
        return nameInfo;
    }

    public void setNameInfo(String nameInfo) {
        this.nameInfo = nameInfo;
    }

    public String getTextInfo() {
        return textInfo;
    }
    public void setTextInfo(String textInfo) {
        this.textInfo = textInfo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductSpecification that = (ProductSpecification) o;
        return id == that.id;
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
