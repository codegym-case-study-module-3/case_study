package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Order;
import com.codegym.website_product.repository.OrderRepository;
import com.codegym.website_product.repository.OrderRepositoryImpl;
import com.codegym.website_product.service.OrderService;

import java.util.List;

public class OrderServiceImpl implements OrderService {
    private OrderRepository orderRepository = new OrderRepositoryImpl();
    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public Order findById(int id) {
        return orderRepository.findById(id);
    }

    @Override
    public void updateStatus(int id, int status) {
        orderRepository.updateStatus(id, status);
    }
}
