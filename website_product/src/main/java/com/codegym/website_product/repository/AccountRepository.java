package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Account;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountRepository {

    public static List<Account> getAll() {
        List<Account> accounts = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from account");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String role = resultSet.getString("role");
                accounts.add(new Account(id, email, password, role));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return accounts;
    }

    public void save(Account account) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into account(email,password, role) values (?,?,?)");
            statement.setString(1, account.getEmail());
            statement.setString(2, account.getPassword());
            statement.setString(3, account.getRole());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteById(long id) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("delete from account where id = ?");
            statement.setLong(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static Account findAccountByemail(String email) {
        List<Account> accounts = getAll();
        for (Account account : accounts) {
            if (account.getEmail().equals(email)) {
                return account;
            }
        }
        return null;
    }

    public static Account findLoginAccount(String email, String password) {
        List<Account> accounts = getAll();
        for (Account account : accounts) {
            if (account.getEmail().equals(email) && account.getPassword().equals(password)) {
                return account;
            }
        }
        return null;
    }

    public static void updateAccount(Account account) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("UPDATE account SET password = ?, role = ? WHERE email = ?");
            statement.setString(1, account.getPassword());
            statement.setString(2, account.getRole());
            statement.setString(3, account.getEmail());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
