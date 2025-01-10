//Đây là UserRepository.java
package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Account;
import com.codegym.website_product.entity.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {

    public List<User> getAll() {
        List<User> accounts = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from users");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");

                String full_name = resultSet.getString("full_name");
                String date_of_birth = resultSet.getString("date_of_birth");
                String gender = resultSet.getString("gender");
                String phone_number = resultSet.getString("phone_number");
                String address = resultSet.getString("address");
                int account_id = resultSet.getInt("account_id");
                accounts.add(new User(id, full_name, date_of_birth, gender, phone_number, address, account_id));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return accounts;
    }

    public User findByAccountId(int accountId) {
        List<User> accounts = getAll();
        for (User user : accounts) {
            if (user.getAccount_id() == accountId) {
                return user;
            }
        }
        return null;
    }

    public User findById(int id) {
        List<User> accounts = getAll();
        for (User user : accounts) {
            if (user.getId() == id) {
                return user;
            }
        }
        return null;
    }

    public void save(User user) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into users (full_name, date_of_birth, gender, phone_number, address, account_id) values (?,?,?,?,?,?)");
            statement.setString(1, user.getFullName());
            statement.setString(2, user.getDob());
            statement.setString(3, user.getGender());
            statement.setString(4, user.getPhone_number());
            statement.setString(5, user.getAddress());
            statement.setString(6, String.valueOf(user.getAccount_id()));
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(User user) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement(
                    "UPDATE users SET full_name = ?, date_of_birth = ?, gender = ?, phone_number = ?, address = ? WHERE account_id = ?");
            statement.setString(1, user.getFullName());
            statement.setString(2, user.getDob());
            statement.setString(3, user.getGender());
            statement.setString(4, user.getPhone_number());
            statement.setString(5, user.getAddress());
            statement.setInt(6, user.getAccount_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating user info: " + e.getMessage(), e);
        }
    }



}
