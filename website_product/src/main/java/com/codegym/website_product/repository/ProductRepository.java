package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository {
    private static String selectAll = "select * from products";
    public List<Product> getAll() {
        List<Product> products = new ArrayList<Product>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(selectAll);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                String image = resultSet.getString("image");
                int category_id = resultSet.getInt("category_id");
                String created_at  = resultSet.getString("created_at");
                products.add(new Product(id, name, description, price, stock, image, category_id, created_at));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }

    public List<Product> getAllByCategory(int category_id) {
        List<Product> products = new ArrayList<Product>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(selectAll + " where category_id = ? order by created_at desc");
            statement.setInt(1, category_id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                String image = resultSet.getString("image");
                int categoryId = resultSet.getInt("category_id");
                String created_at  = resultSet.getString("created_at");
                products.add(new Product(id, name, description, price, stock, image, categoryId, created_at));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }
}
