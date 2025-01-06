package com.codegym.website_product.service;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.repository.ProductRepository;

import java.util.List;

public class ProductService {
    private static ProductRepository productRepository = new ProductRepository();

    public List<Product> getAll() {
        return productRepository.getAll();
    }

    public List<Product> getAllByCategory(int categoryId) {
        return productRepository.getAllByCategory(categoryId);
    }

    public List<Product> getFourByCategory(int categoryId) {
        return productRepository.getAllByCategory(categoryId);
    }
}
