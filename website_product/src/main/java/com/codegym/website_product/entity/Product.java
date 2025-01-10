package com.codegym.website_product.entity;

public class Product {
    private long id;
    private String name;
    private String description;
    private double price;
    private int quantity;
    private String image;
    private int categoryId;
    private String created_at;
    private String categoryName;

    public Product(int id, String name, String description, double price, int quantity, String image, int categoryId, String createdAt, String categoryName) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.categoryId = categoryId;
        this.created_at = createdAt;
        this.categoryName = categoryName;
    }
//    Product(id,name_u,description_u,price_u,quantity_u,image_u,categoryId_u)
    public Product( long id,String name_u, String description_u, double price_u, int quantity_u, String image_u, int categoryId_u) {
        this.id = id;
        this.name = name_u;
        this.description = description_u;
        this.price = price_u;
        this.quantity = quantity_u;
        this.image = image_u;
        this.categoryId = categoryId_u;

}
    public Product(String name, String description, double price, int quantity, String image, int category_id) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.categoryId = category_id;
    }

    public Product(int id, String name, String description, double price, int quantity, String image, int categoryId, String created_at) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.categoryId = categoryId;
        this.created_at = created_at;
    }

    public Product(int id, String name, String description, double price, int quantity, String image, int categoryId) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.categoryId = categoryId;
    }

    public Product(String name, String description, double price, int quantity, String image, int categoryId, String created_at) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.image = image;
        this.categoryId = categoryId;
        this.created_at = created_at;
    }

    public Product(int id, String name, int description, int price, int stock, String image, String categoryId, String createdAt) {
    }

    public long getId() {
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}