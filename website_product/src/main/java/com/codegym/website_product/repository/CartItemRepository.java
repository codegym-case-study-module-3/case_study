//Đây là file CartItemRepository.java


        package com.codegym.website_product.repository;

import com.codegym.website_product.entity.CartItem;
import com.codegym.website_product.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartItemRepository {
    public void save(CartItem cartItem) {
        String query = "INSERT INTO cartitem (cart_id, product_id, quantity) VALUES (?, ?, ?)";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, cartItem.getCartId());
            statement.setInt(2, cartItem.getProductId());
            statement.setInt(3, cartItem.getQuantity());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error saving CartItem: " + e.getMessage(), e);
        }
    }
    public List<CartItem> findByCartId(int cartId) {
        List<CartItem> cartItems = new ArrayList<>();
        String query = "SELECT ci.*, p.name, p.price, p.image FROM cartitem ci JOIN products p ON ci.product_id = p.id WHERE ci.cart_id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, cartId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CartItem cartItem = new CartItem(
                        rs.getInt("id"),
                        rs.getInt("cart_id"),
                        rs.getInt("product_id"),
                        rs.getInt("quantity")
                );
                Product product = new Product(
                        rs.getInt("product_id"),
                        rs.getString("name"),
                        "",
                        rs.getDouble("price"),
                        0,
                        rs.getString("image"),
                        0
                );

                cartItems.add(cartItem);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error fetching CartItems: " + e.getMessage(), e);
        }
        return cartItems;
    }
    public void delete(int cartItemId) {
        String query = "DELETE FROM cartitem WHERE id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, cartItemId);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting CartItem: " + e.getMessage(), e);
        }
    }

    public void clearCartItemsByCartId(int cartId) {
        String query = "DELETE FROM cartitem WHERE cart_id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, cartId);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error clearing cart items: " + e.getMessage(), e);
        }
    }


    public CartItem findByCartIdAndProductId(int cartId, int productId) {
        String query = "SELECT * FROM cartitem WHERE cart_id = ? AND product_id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, cartId);
            statement.setInt(2, productId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return new CartItem(
                        rs.getInt("id"),
                        rs.getInt("cart_id"),
                        rs.getInt("product_id"),
                        rs.getInt("quantity")
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error fetching CartItem: " + e.getMessage(), e);
        }
        return null;
    }

    public void update(CartItem cartItem) {
        String query = "UPDATE cartitem SET quantity = ? WHERE id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, cartItem.getQuantity());
            statement.setInt(2, cartItem.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating CartItem: " + e.getMessage(), e);
        }
    }


}
