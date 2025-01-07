package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Category;
import com.codegym.website_product.repository.CategoryRepository;

public class CategoryService {
    private static CategoryRepository categoryRepository = new CategoryRepository();

    public Category findById(int id) {
        return categoryRepository.findById(id);
    }
}
