package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository {
    private static List<Product> products = new ArrayList<>();

    private static String selectAll = "select * from products";

    public Product findById(int id) {
        String query = "SELECT * FROM products WHERE id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                return new Product(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("description"),
                        resultSet.getDouble("price"),
                        resultSet.getInt("stock"),
                        resultSet.getString("image"),
                        resultSet.getInt("category_id"),
                        resultSet.getString("created_at")
                );
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public List<Product> findByName(String name) {
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
                        resultSet.getString("description"),
                        resultSet.getDouble("price"),
                        resultSet.getInt("stock"),
                        resultSet.getString("image"),
                        resultSet.getInt("category_id"),
                        resultSet.getString("created_at")
                ));

            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return products;
    }
    public List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("SELECT * FROM products");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("stock");
                String image = resultSet.getString("image");
                int categoryId = resultSet.getInt("category_id");
                String created_at = resultSet.getString("created_at");
                products.add(new Product(id, name, description, price, quantity, image, categoryId, created_at));
//             public Product(int id, String name, String description, double price, int quantity,
//                String image, int categoryId, String created_at)

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    public void save(Product product) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
                    "INSERT INTO products (name, description, price, stock, image, category_id, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)"
            );
            statement.setString(1, product.getName());
            statement.setString(2, product.getDescription());
            statement.setDouble(3, product.getPrice());
            statement.setInt(4, product.getQuantity());
            statement.setString(5, product.getImage());
            statement.setInt(6, product.getCategoryId());
            statement.setString(7, product.getCreated_at());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(int id, Product product) {
        String query = "UPDATE products SET name = ?, description = ?, price = ?, stock = ?, image = ?, category_id = ?, created_at = ? WHERE id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, product.getName());
            statement.setString(2, product.getDescription());
            statement.setDouble(3, product.getPrice());
            statement.setInt(4, product.getQuantity());
            statement.setString(5, product.getImage());
            statement.setInt(6, product.getCategoryId());
            statement.setString(7, product.getCreated_at());
            statement.setInt(8, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteById(int id) {
        try {
            PreparedStatement statement = BaseRepository.getConnection()
                    .prepareStatement("DELETE FROM products WHERE id = ?");
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public List<Product> getAllByCategory(int categoryId) {
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
                    "SELECT * FROM products WHERE category_id = ? ORDER BY created_at DESC"
            );
            statement.setInt(1, categoryId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
                String image = resultSet.getString("image");
                String created_at = resultSet.getString("created_at");
                products.add(new Product(id, name, description, price, quantity, image, categoryId, created_at));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }
}
