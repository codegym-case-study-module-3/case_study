package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryDetail extends BaseRepository {

    public Product findById(int id) {
        String query = "SELECT * FROM product WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getString("image"),
                        rs.getInt("categoryId"),
                        rs.getString("created_at")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<Product> findSimilarProductsByCategoryId(int categoryId, int productId) {
        List<Product> similarProducts = new ArrayList<>();
        String query = "SELECT * FROM product WHERE categoryId = ? AND id != ? LIMIT 6";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, categoryId);
            statement.setInt(2, productId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getString("image"),
                        rs.getInt("categoryId"),
                        rs.getString("created_at")
                );
                similarProducts.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return similarProducts;
    }
}
