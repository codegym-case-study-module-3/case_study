package com.codegym.website_product.repository;

import com.codegym.website_product.entity.Account;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountRepository {

    public static List<Account> getAll(){
        List<Account> accounts = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from account");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getInt("id");
                long userId = resultSet.getLong("user_id");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String role = resultSet.getString("role");
                accounts.add(new Account(id, userId, email, password, role));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return accounts;
    }

    public void save(Account account) {
        String password = hashPassword(account.getPassword());
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into account(user_id, email,password, role) values (?,?,?,?)");
            statement.setLong(1, account.getUser_id());
            statement.setString(2,account.getEmail());
            statement.setString(3,password);
            statement.setString(4,account.getRole());
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

    public static Account findLoginAccount (String email, String password){
        List<Account> accounts = getAll();
        String password_hash = hashPassword(password);
        for (Account account : accounts) {
            if (account.getEmail().equals(email) && account.getPassword().equals(password_hash)) {
                return account;
            }
        }
        return null;
    }


   public static String hashPassword (String password) {
       try { MessageDigest md = MessageDigest.getInstance("SHA-256");
           byte[] hashedBytes = md.digest(password.getBytes());
           StringBuilder sb = new StringBuilder();
           for (byte b : hashedBytes) {
               sb.append(String.format("%02x", b));
           }
           return sb.toString();
       }
       catch (NoSuchAlgorithmException e) {
           throw new RuntimeException(e);
       }
   }


}
