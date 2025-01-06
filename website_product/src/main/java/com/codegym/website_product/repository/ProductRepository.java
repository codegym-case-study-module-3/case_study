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

        public List<Product> getAll() {
            List<Product> products = new ArrayList<>();
            try {
                PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from products");
                ResultSet resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    int description = resultSet.getInt("description");
                    int price = resultSet.getInt("price");
                    int stock = resultSet.getInt("stock");
                    String image = resultSet.getString("image");
                    String category_id = resultSet.getString("category_id");
                    String created_at = resultSet.getString("created_at");
                    products.add(new Product(id,name,description,price,stock,image,category_id,created_at));
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

            return products;
        }

        public void save(Product p) {
            try {
                PreparedStatement statement=BaseRepository.getConnection().prepareStatement("insert into  products(id,name,description,price,stock,image,category_id,created_at)values (?,?,?,?,?,?,?,?)");
                statement.setString(1, p.getName());
                statement.setInt(2, p.getDescription());
                statement.setInt(3, p.getPrice());
                statement.setInt(4, p.getStock());
                statement.setString(5, p.getImage());
                statement.setString(6, p.getCategory_id());



            } catch (SQLException e){
                throw new RuntimeException(e);

            }
        }

        public void update( int id ,Product p) {
            String query = "UPDATE products SET name = ?, description = ?, price = ?, stock = ? , image = ?  ,category_id = ? WHERE id = ?";
            try (Connection connection = BaseRepository.getConnection();
                 PreparedStatement statement = connection.prepareStatement(query)) {

                statement.setString(1, p.getName());
                statement.setInt(2, p.getDescription());
                statement.setInt(3, p.getPrice());
                statement.setInt(4, p.getStock());
                statement.setString(5, p.getImage());
                statement.setString(6, p.getCategory_id());

                statement.setInt(8, id);

                statement.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        public void deleteById(int id) {
            try {
                PreparedStatement statement = BaseRepository.getConnection()
                        .prepareStatement("delete from product where id = ?null");
                statement.setInt(1, id);
                statement.executeUpdate();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
}
