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
                    String description = resultSet.getString("description");
                    int price = resultSet.getInt("price");
                    double stock = resultSet.getDouble("stock");
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
                statement.setString(2, p.getDescription());
                statement.setDouble(3, p.getPrice());
                statement.setInt(4, p.getQuantity());
                statement.setString(5, p.getImage());
                statement.setInt(6, p.getCategoryId());



            } catch (SQLException e){
                throw new RuntimeException(e);

            }
        }

        public void update( int id ,Product p) {
            String query = "UPDATE products SET name = ?, description = ?, price = ?, stock = ? , image = ?  ,category_id = ? WHERE id = ?";
            try (Connection connection = BaseRepository.getConnection();
                 PreparedStatement statement = connection.prepareStatement(query)) {

                statement.setString(1, p.getName());
                statement.setString(2, p.getDescription());
                statement.setDouble(3, p.getPrice());
                statement.setInt(4, p.getQuantity());
                statement.setString(5, p.getImage());
                statement.setInt(6, p.getCategoryId());

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
    private static String selectAll = "select * from products";
//    public List<Product> getAll() {
//        List<Product> products = new ArrayList<Product>();
//        try {
//            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(selectAll);
//            ResultSet resultSet = statement.executeQuery();
//            while (resultSet.next()) {
//                int id = resultSet.getInt("id");
//                String name = resultSet.getString("name");
//                String description = resultSet.getString("description");
//                double price = resultSet.getDouble("price");
//                int stock = resultSet.getInt("stock");
//                String image = resultSet.getString("image");
//                int category_id = resultSet.getInt("category_id");
//                String created_at  = resultSet.getString("created_at");
//                products.add(new Product(id, name, description, price, stock, image, category_id, created_at));
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return products;
//    }

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
