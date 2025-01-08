package com.codegym.website_product.service;

import com.codegym.website_product.entity.Order;

import java.util.List;

public interface OrderService {
    List<Order> findAll();
    Order findById(int id);
    void updateStatus(int id, int status);
}
