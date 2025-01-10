package com.codegym.website_product.service;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.entity.ProductSpecification;

import java.util.List;

public interface IProduct extends IService<Product> {
    List<Product> getAll();
//    void save(Product p);
    void saveWithSpecifications(Product p, List<ProductSpecification> specifications); // Thêm mới
    void update(int id, Product p, List<ProductSpecification> specifications1);
    void remove(int id);
    Product findById(int id);
    List<Product> findByName(String name);

    Product getProductById(int id);
}