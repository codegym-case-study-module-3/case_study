package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Product;

import java.sql.*;
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
            Connection connection = BaseRepository.getConnection();

            // Câu lệnh SQL để thêm sản phẩm mới vào bảng products
            String sqlInsertProduct = "INSERT INTO products (name, description, price, stock, image, category_id, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)";

            // Tạo PreparedStatement với câu lệnh SQL
            PreparedStatement statement = connection.prepareStatement(sqlInsertProduct, Statement.RETURN_GENERATED_KEYS);
//            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
//                    "INSERT INTO products (name, description, price, stock, image, category_id, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)"
//            );
            statement.setString(1, product.getName());
            statement.setString(2, product.getDescription());
            statement.setDouble(3, product.getPrice());
            statement.setInt(4, product.getQuantity());
            statement.setString(5, product.getImage());
            statement.setInt(6, product.getCategoryId());
            statement.setString(7, product.getCreated_at());
//            statement.executeUpdate();
            //mới
            int affectedRows =  statement.executeUpdate();
            if (affectedRows > 0) {
                ResultSet generatedKeys = statement.getGeneratedKeys();
                if (generatedKeys.next()) {
                    long productId = generatedKeys.getLong(1);  // Lấy product_id vừa chèn vào

                    // In ra product_id
                    System.out.println("Product ID: " + productId);

                    // Sử dụng productId để thực hiện INSERT vào bảng productspecification
                    insertProductSpecification(connection, productId);
                }
            }
            // Đóng kết nối
            statement.close();
            connection.close();
            //
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void insertProductSpecification(Connection connection, long productId) throws SQLException {
        String sqlInsertProductSpec = "INSERT INTO productspecification (product_id, name_info, text_info) VALUES (?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sqlInsertProductSpec);

        // Thêm giá trị vào các tham số trong câu lệnh PreparedStatement
        statement.setLong(1, productId);  // Sử dụng productId vừa lấy được
        statement.setString(2, "llll");
        statement.setString(3, "gjgjggj");

        // Thực thi câu lệnh INSERT
        int affectedRows = statement.executeUpdate();
        if (affectedRows > 0) {
            System.out.println("Product specification added successfully!");
        }

        // Đóng PreparedStatement
        statement.close();
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
        Connection connection = null;
        PreparedStatement deleteSpecificationsStmt = null;
        PreparedStatement deleteProductStmt = null;

        try {
            // Lấy kết nối
            connection = BaseRepository.getConnection();

            // Tắt auto-commit để xử lý transaction
            connection.setAutoCommit(false);

            // Câu SQL xóa trong bảng productspecification
            String deleteSpecificationsQuery = "DELETE FROM productspecification WHERE product_id = ?";
            deleteSpecificationsStmt = connection.prepareStatement(deleteSpecificationsQuery);
            deleteSpecificationsStmt.setInt(1, id);
            deleteSpecificationsStmt.executeUpdate();

            // Câu SQL xóa trong bảng products
            String deleteProductQuery = "DELETE FROM products WHERE id = ?";
            deleteProductStmt = connection.prepareStatement(deleteProductQuery);
            deleteProductStmt.setInt(1, id);
            deleteProductStmt.executeUpdate();

            // Commit transaction nếu không có lỗi
            connection.commit();
            System.out.println("Successfully deleted product and its specifications.");
        } catch (SQLException e) {
            // Rollback nếu xảy ra lỗi
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException rollbackEx) {
                    System.err.println("Failed to rollback changes.");
                    rollbackEx.printStackTrace();
                }
            }
            throw new RuntimeException("Error while deleting product and its specifications", e);
        } finally {
            // Đóng tài nguyên và bật lại auto-commit
            try {
                if (deleteSpecificationsStmt != null) {
                    deleteSpecificationsStmt.close();
                }
                if (deleteProductStmt != null) {
                    deleteProductStmt.close();
                }
                if (connection != null) {
                    connection.setAutoCommit(true);
                    connection.close();
                }
            } catch (SQLException closeEx) {
                System.err.println("Error while closing resources.");
                closeEx.printStackTrace();
            }
        }
    }


//    public void deleteById(int id) {
//        try {
//            PreparedStatement statement = BaseRepository.getConnection()
//                    .prepareStatement("DELETE FROM products WHERE id = ?  ");
//
//            statement.setInt(1, id);
//            statement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }


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
                int quantity = resultSet.getInt("stock");
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
