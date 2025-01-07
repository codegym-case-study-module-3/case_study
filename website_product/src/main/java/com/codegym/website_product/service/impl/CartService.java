package com.codegym.website_product.service.impl;

import com.codegym.website_product.entity.Cart;
import com.codegym.website_product.repository.CartRepository;

public class CartService {
    private static CartRepository cartRepository = new CartRepository();

    public Cart findByUserId(int userId) {
        return cartRepository.findByUserId(userId);
    }

    public void save(Cart cart) {
        cartRepository.save(cart);
    }
}
