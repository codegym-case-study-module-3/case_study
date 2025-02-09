package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Product;
import com.codegym.website_product.entity.ProductSpecification;

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
    public List<Product> findSimilarProductsByCategoryId(int categoryId, int productId) {
        List<Product> similarProducts = new ArrayList<>();
        String query = "SELECT * FROM products WHERE category_id = ? AND id != ? LIMIT 4";
        try (Connection connection = BaseRepository.getConnection();
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
                        rs.getInt("stock"),
                        rs.getString("image"),
                        rs.getInt("category_id"),
                        rs.getString("created_at")
                );
                similarProducts.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return similarProducts;
    }
    public static double getPriceById(int productId) {
        double price = 0;
        String query = "SELECT price FROM product WHERE id = ?";
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, productId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                price = rs.getDouble("price");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return price;
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
//            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("SELECT * FROM products");
//            ResultSet resultSet = statement.executeQuery();
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
                    "SELECT p.id, p.name, p.description, p.price, p.stock AS quantity, p.image, " +
                            "p.category_id, p.created_at, c.name AS category_name " +
                            "FROM products p " +
                            "JOIN category c ON p.category_id = c.id"
            );
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int quantity = resultSet.getInt("quantity");
                String image = resultSet.getString("image");
                int categoryId = resultSet.getInt("category_id");
                String created_at = resultSet.getString("created_at");
                String categoryName = resultSet.getString("category_name");
                products.add(new Product(id, name, description, price, quantity, image, categoryId, created_at, categoryName));
//             public Product(int id, String name, String description, double price, int quantity,
//                String image, int categoryId, String created_at)

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }
    public void save(Product product, List<ProductSpecification> specifications) {
        String sqlInsertProduct = "INSERT INTO products (name, description, price, stock, image, category_id, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)";
        String sqlInsertProductSpec = "INSERT INTO productspecification (product_id, name_info, text_info) VALUES (?, ?, ?)";

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement productStmt = connection.prepareStatement(sqlInsertProduct, Statement.RETURN_GENERATED_KEYS)) {

            // Chèn sản phẩm vào bảng `products`
            productStmt.setString(1, product.getName());
            productStmt.setString(2, product.getDescription());
            productStmt.setDouble(3, product.getPrice());
            productStmt.setInt(4, product.getQuantity());
            productStmt.setString(5, product.getImage());
            productStmt.setInt(6, product.getCategoryId());
            productStmt.setString(7, product.getCreated_at());

            int affectedRows = productStmt.executeUpdate();

            if (affectedRows > 0) {
                try (ResultSet generatedKeys = productStmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        long productId = generatedKeys.getLong(1); // Lấy `product_id` của sản phẩm vừa thêm
                        System.out.println("Product ID: " + productId);

                        // Chèn thông tin chi tiết sản phẩm vào bảng `productspecification`
                        try (PreparedStatement specStmt = connection.prepareStatement(sqlInsertProductSpec)) {
                            for (ProductSpecification spec : specifications) {
                                specStmt.setLong(1, productId); // Liên kết với product_id
                                specStmt.setString(2, spec.getNameInfo());
                                specStmt.setString(3, spec.getTextInfo());

                                specStmt.addBatch(); // Thêm vào batch
                            }

                            // Thực thi batch
                            int[] specAffectedRows = specStmt.executeBatch();
                            System.out.println(specAffectedRows.length + " product specifications added successfully!");
                        }
                    }
                }
            }

        } catch (SQLException e) {
            System.err.println("Error while saving product: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }



//    public void save(Product product) {
//        try {
//            Connection connection = BaseRepository.getConnection();
//
//            // Câu lệnh SQL để thêm sản phẩm mới vào bảng products
//            String sqlInsertProduct = "INSERT INTO products (name, description, price, stock, image, category_id, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)";
//
//            // Tạo PreparedStatement với câu lệnh SQL
//            PreparedStatement statement = connection.prepareStatement(sqlInsertProduct, Statement.RETURN_GENERATED_KEYS);
////            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
////                    "INSERT INTO products (name, description, price, stock, image, category_id, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)"
////            );
//            statement.setString(1, product.getName());
//            statement.setString(2, product.getDescription());
//            statement.setDouble(3, product.getPrice());
//            statement.setInt(4, product.getQuantity());
//            statement.setString(5, product.getImage());
//            statement.setInt(6, product.getCategoryId());
//            statement.setString(7, product.getCreated_at());
////            statement.executeUpdate();
//            //mới
//            int affectedRows =  statement.executeUpdate();
//            if (affectedRows > 0) {
//                ResultSet generatedKeys = statement.getGeneratedKeys();
//                if (generatedKeys.next()) {
//                    long productId = generatedKeys.getLong(1);  // Lấy product_id vừa chèn vào
//
//                    // In ra product_id
//                    System.out.println("Product ID: " + productId);
//
//                    // Sử dụng productId để thực hiện INSERT vào bảng productspecification
//                    insertProductSpecification(connection, productId);
//                }
//            }
//            // Đóng kết nối
//            statement.close();
//            connection.close();
//            //
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//    public static void insertProductSpecification(Connection connection, long productId) throws SQLException {
//        String sqlInsertProductSpec = "INSERT INTO productspecification (product_id, name_info, text_info) VALUES (?, ?, ?)";
//        PreparedStatement statement = connection.prepareStatement(sqlInsertProductSpec);
//
//        // Thêm giá trị vào các tham số trong câu lệnh PreparedStatement
//        statement.setLong(1, productId);  // Sử dụng productId vừa lấy được
//        statement.setString(2, "llll");
//        statement.setString(3, "gjgjggj");
//
//        // Thực thi câu lệnh INSERT
//        int affectedRows = statement.executeUpdate();
//        if (affectedRows > 0) {
//            System.out.println("Product specification added successfully!");
//        }
//
//        // Đóng PreparedStatement
//        statement.close();
//    }

    public void update(int id, Product product) {
        String sqlUpdate = "UPDATE products SET name = ?, description = ?, price = ?, stock = ?, image = ?, category_id = ? WHERE id = ?";

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement stmt = connection.prepareStatement(sqlUpdate)) {

            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setDouble(3, product.getPrice());
            stmt.setInt(4, product.getQuantity());
            stmt.setString(5, product.getImage());
            stmt.setInt(6, product.getCategoryId());
            stmt.setLong(7, id);

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating product", e);
        }
    }
    public void updateSpecifications(long productId, List<ProductSpecification> specifications) {
        String deleteSql = "DELETE FROM productspecification WHERE product_id = ?";
        String insertSql = "INSERT INTO productspecification (product_id, name_info, text_info) VALUES (?, ?, ?)";

        try (Connection connection = BaseRepository.getConnection()) {
            // Xóa thông số kỹ thuật cũ
            try (PreparedStatement deleteStmt = connection.prepareStatement(deleteSql)) {
                deleteStmt.setLong(1, productId);
                deleteStmt.executeUpdate();
            }

            // Chèn thông số kỹ thuật mới
            try (PreparedStatement insertStmt = connection.prepareStatement(insertSql)) {
                for (ProductSpecification spec : specifications) {
                    insertStmt.setLong(1, productId);
                    insertStmt.setString(2, spec.getNameInfo());
                    insertStmt.setString(3, spec.getTextInfo());
                    insertStmt.addBatch();
                }
                insertStmt.executeBatch();
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error updating product specifications", e);
        }
    }

//    public void update(int id, Product product) {
//        String query = "UPDATE products SET name = ?, description = ?, price = ?, stock = ?, image = ?, category_id = ?, created_at = ? WHERE id = ?";
//        try (Connection connection = BaseRepository.getConnection();
//             PreparedStatement statement = connection.prepareStatement(query)) {
//
//            statement.setString(1, product.getName());
//            statement.setString(2, product.getDescription());
//            statement.setDouble(3, product.getPrice());
//            statement.setInt(4, product.getQuantity());
//            statement.setString(5, product.getImage());
//            statement.setInt(6, product.getCategoryId());
//            statement.setString(7, product.getCreated_at());
//            statement.setInt(8, id);
//            statement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }


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
