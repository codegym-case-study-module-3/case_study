package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Order;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderRepositoryImpl extends OrderRepository {
    @Override
    public List<Order> findAll() {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders";
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(sql)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order(
                        resultSet.getInt("id"),
                        resultSet.getInt("user_id"),
                        resultSet.getInt("status"),
                        resultSet.getDouble("total_price"),
                        resultSet.getString("created_at")
                );
                orders.add(order);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return orders;
    }

    @Override
    public Order findById(long id) {
        String sql = "SELECT * FROM orders WHERE id = ?";
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(sql)) {
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return new Order(
                        resultSet.getInt("id"),
                        resultSet.getInt("user_id"),
                        resultSet.getInt("status"),
                        resultSet.getDouble("total_price"),
                        resultSet.getString("created_at")
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public void updateStatus(int id, int status) {
        String sql = "UPDATE orders SET status = ? WHERE id = ?";
        try (PreparedStatement statement = BaseRepository.getConnection().prepareStatement(sql)) {
            statement.setInt(1, status);
            statement.setLong(2, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
