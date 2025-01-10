package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Order;
import com.codegym.website_product.entity.OrderDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderRepository {

    public int save(Order order) {
        String query = "INSERT INTO orders (user_id, status, total_price, created_at) VALUES (?, ?, ?, NOW())";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS)) {
            statement.setInt(1, order.getUserId());
            statement.setInt(2, order.getStatus());
            statement.setDouble(3, order.getPrice());
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error saving order: " + e.getMessage(), e);
        }
        return -1;
    }

    public void saveOrderDetail(OrderDetail orderDetail) {
        String query = "INSERT INTO orderdetails (order_id, product_id, quantity) VALUES (?, ?, ?)";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, orderDetail.getOrderId());
            statement.setInt(2, orderDetail.getProductId());
            statement.setInt(3, orderDetail.getQuantity());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error saving order detail: " + e.getMessage(), e);
        }
    }
}
