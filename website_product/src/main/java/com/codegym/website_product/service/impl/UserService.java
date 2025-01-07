package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.User;
import com.codegym.website_product.repository.UserRepository;

import java.util.List;

public class UserService {
    private static UserRepository userRepository = new UserRepository();

    public List<User> getAll() {
        return userRepository.getAll();
    }

    public User getByAccountId(int accountId) {
        return userRepository.findByAccountId(accountId);
    }

    public void save(User user) {
        userRepository.save(user);
    }

    public User findById(int id) {
        return userRepository.findById(id);
    }
}
