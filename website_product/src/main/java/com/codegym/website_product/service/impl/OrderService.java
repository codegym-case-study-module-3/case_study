package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Order;
import com.codegym.website_product.entity.OrderDetail;
import com.codegym.website_product.entity.User;
import com.codegym.website_product.repository.UserRepository;
import com.codegym.website_product.repository.OrderRepository;


public class OrderService {
    private static UserRepository userRepository = new UserRepository();
    private final OrderRepository orderRepository = new OrderRepository();
    public void saveShippingInfo(User user) {
        userRepository.update(user);
    }

    public int createOrder(Order order) {
        return orderRepository.save(order);  // Trả về `orderId` sau khi lưu
    }

    public void createOrderDetail(OrderDetail orderDetail) {
        orderRepository.saveOrderDetail(orderDetail);
    }


}
