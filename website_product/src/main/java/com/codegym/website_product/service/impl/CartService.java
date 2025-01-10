//Đây là CartService.java

package com.codegym.website_product.service.impl;


import com.codegym.website_product.entity.Cart;
import com.codegym.website_product.entity.CartItem;
import com.codegym.website_product.entity.Product;
import com.codegym.website_product.repository.CartItemRepository;
import com.codegym.website_product.repository.CartRepository;

import java.util.List;
import java.util.Map;

public class CartService {
    private static CartRepository cartRepository = new CartRepository();
    private static CartItemRepository cartItemRepository = new CartItemRepository();

    public Cart findByUserId(int userId) {
        return cartRepository.findByUserId(userId);
    }

    public void save(Cart cart) {
        cartRepository.save(cart);
    }
    public void clearCart(int userId) {
        Cart cart = cartRepository.findByUserId(userId);
        if (cart != null) {
            cartItemRepository.clearCartItemsByCartId(cart.getId());
        }
    }

    public void addCartItem(CartItem cartItem) {
        CartItem existingItem = cartItemRepository.findByCartIdAndProductId(cartItem.getCartId(), cartItem.getProductId());
        if (existingItem != null) {
            existingItem.setQuantity(existingItem.getQuantity() + cartItem.getQuantity());
            cartItemRepository.update(existingItem);
        } else {
            cartItemRepository.save(cartItem);
        }
    }

    public List<CartItem> getCartItemsByCartId(int cartId) {
        return cartItemRepository.findByCartId(cartId);
    }

    public void removeCartItem(int cartId, int productId) {
        CartItem cartItem = cartItemRepository.findByCartIdAndProductId(cartId, productId);
        if (cartItem != null) {
            cartItemRepository.delete(cartItem.getId());
        }
    }

    public double calculateTotal(List<CartItem> cartItems, Map<Integer, Product> productsMap) {
        return cartItems.stream()
                .mapToDouble(item -> item.getQuantity() * productsMap.get(item.getProductId()).getPrice())
                .sum();
    }
}
