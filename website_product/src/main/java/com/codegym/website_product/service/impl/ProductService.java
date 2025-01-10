package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.entity.Product;
import com.codegym.website_product.entity.ProductSpecification;
import com.codegym.website_product.repository.ProductRepository;
import com.codegym.website_product.service.IProduct;

import java.util.List;

public class ProductService implements IProduct {

    private static ProductRepository productRepository = new ProductRepository();
    @Override
    public void saveWithSpecifications(Product product, List<ProductSpecification> specifications) {
        // Gọi logic xử lý ở ProductRepository
        productRepository.save(product, specifications);
    }
    public void update(int id, Product product, List<ProductSpecification> specifications1) {
        try {
            productRepository.update(id, product); // Cập nhật sản phẩm trong bảng `products`
            productRepository.updateSpecifications(id, specifications1); // Cập nhật thông số kỹ thuật trong bảng `productspecification`
        } catch (Exception e) {
            throw new RuntimeException("Error updating product and specifications", e);
        }
    }
    @Override
    public List<Product> getAll() {
        List<Product> products = productRepository.getAll();
        return products;
    }

    @Override
   public Account save(Product p) {
//       productRepository.save(p);
//    public Account save(Product p) {
//       productRepository.save(p);
//      return null;
        return null;
    }



//    @Override
//    public void update(int id, Product p) {
//    }

    @Override
    public void remove(int id) {

    }

    @Override
    public void update(long id, Product p) {
        productRepository.update(Math.toIntExact(id), p);
    }

    @Override
    public void remove(long id) {

        productRepository.deleteById((int) id);
    }

    @Override
    public Product findById(long id) {
        return null;
    }

    @Override
    public Product findByEmail(String email) {
        return null;
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }

    @Override
    public Product getProductById(int id) {
        return productRepository.findById(id);
    }

    public List<Product> getAllByCategory(int categoryId) {
        return productRepository.getAllByCategory(categoryId);
    }

    public List<Product> getFourByCategory(int categoryId) {
        return productRepository.getAllByCategory(categoryId);
    }
}

