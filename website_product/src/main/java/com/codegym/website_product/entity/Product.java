package com.codegym.website_product.entity;

import java.util.Objects;

public class Product  implements Comparable<Product>{
    private int id;
    private String name;
    private int description;
    private int price;
    private int stock;
    private String image;
    private String category_id;
    private String created_at;

    public Product(int id, int description_u, int price_u, int stock_u, String image_u, String category_id_u, String created_at_u) {
        this.id = id;
        this.description = description_u;
        this.price = price_u;
        this.stock = stock_u;
        this.image = image_u;
        this.category_id = category_id_u;
        this.created_at = created_at_u;


    }

    public Product(String name, int description, int price, int stock, String image, String categoryId, String createdAt) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.image = image;
        this.category_id = categoryId;
        this.created_at = createdAt;

    }

    public Product(int id, String name, int description, int price, int stock, String image, String categoryId, String createdAt) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.image = image;
        this.category_id = categoryId;
        this.created_at = createdAt;

    }

    public Product(int id, String nameU, int descriptionU, int priceU, int stockU, String imageU, String categoryIdU) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.image = image;
        this.category_id = categoryIdU;
    }

    public Product(String name, int description, int price, int stock, String image, String categoryId) {



    }

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

    public int getDescription() {
        return description;
    }

    public void setDescription(int description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;

    }

    @Override
    public int hashCode() {
        return Objects.hash(id,name);
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true; // So sánh bằng tham chiếu.
        if (o == null || getClass() != o.getClass()) return false; // So sánh kiểu lớp.
        Product product = (Product) o;
        return id == product.id && Objects.equals(name, product.name); // So sánh dựa trên code và name.
    }


    @Override
    public String toString() {
        return "Product{"+
                "id=" +id +
                ",name='"+name+'\''+
                ",name='"+description+'\''+
                ",name='"+price+'\''+
                ",name='"+stock+'\''+
                ",name='"+image+'\''+
                ",name='"+category_id+'\''+
                ",name='"+created_at+'\''+
                '}';


    }
    @Override
    public int compareTo(Product o) {
        if(this.getId() > o.getId()) {
            return 1;
        } else if(this.getId() == o.getId()) {
            return this.getName().compareTo(o.getName());
        }
        return -1;
    }
}


