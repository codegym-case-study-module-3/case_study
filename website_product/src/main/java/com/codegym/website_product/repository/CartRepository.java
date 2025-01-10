//Đây là file CartRepository.java

package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Cart;
import com.codegym.website_product.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CartRepository {

    public Cart findByUserId(int userId) {
        String query = "SELECT * FROM cart WHERE user_id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setInt(1, userId);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                return new Cart(
                        resultSet.getInt("id"),
                        resultSet.getInt("user_id"),
                        resultSet.getString("created_at")
                );
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public void save(Cart cart) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into cart (user_id) values (?)");
            statement.setString(1, String.valueOf(cart.getUserId()));
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
