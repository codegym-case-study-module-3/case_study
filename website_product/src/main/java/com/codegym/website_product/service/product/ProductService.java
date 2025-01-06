package com.codegym.website_product.service.product;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.repository.BaseRepository;
import com.codegym.website_product.repository.ProductRepository;
import com.codegym.website_product.service.impl.IProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProduct {

    private static ProductRepository productRepository = new ProductRepository();
    @Override
    public List<Product> getAll(){
        List<Product> products = productRepository.getAll();
        return products;
    }

    @Override
    public void save(Product p){
        productRepository.save(p);
    }

    @Override
    public void update(int id, Product p) {

    }

    @Override
    public void remove(int id) {

    }

    @Override
    public void update(long id, Product p){
        productRepository.update(Math.toIntExact(id),p);
    }
    @Override
    public void remove(long id){
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
    public Product findById(int id){
        String query = "SELECT * FROM products WHERE id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                return new Product(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("description"),
                        resultSet.getInt("price"),
                        resultSet.getInt("stock"),
                        resultSet.getString("image"),
                        resultSet.getString("category_id"),
                        resultSet.getString("created_at")
                );
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    @Override
    public List<Product> findByName(String name){
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM products WHERE name LIKE ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, "%" + name + "%");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                products.add(new Product(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("description"),
                        resultSet.getInt("price"),
                        resultSet.getInt("stock"),
                        resultSet.getString("image"),
                        resultSet.getString("category_id"),
                        resultSet.getString("created_at")
                ));

            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return products;
    }
}

