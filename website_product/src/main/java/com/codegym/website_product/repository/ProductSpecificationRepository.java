package com.codegym.website_product.repository;

import com.codegym.website_product.entity.ProductSpecification;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductSpecificationRepository extends BaseRepository {

    public List<ProductSpecification> findSpecificationsByProductId(int productId) {
        List<ProductSpecification> specifications = new ArrayList<>();
        String query = "SELECT * FROM productspecification WHERE product_id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, productId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ProductSpecification spec = new ProductSpecification(
                        rs.getInt("id"),
                        rs.getInt("product_id"),
                        rs.getString("name_info"),  // đổi thành name_info
                        rs.getString("text_info")   // đổi thành text_info
                );
                specifications.add(spec);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return specifications;
    }
}
