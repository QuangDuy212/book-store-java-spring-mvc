package com.vn.bookstore.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Cart;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.repository.CartRepository;

@Service
public class CartService {
    private final CartRepository cartRepository;

    public CartService(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

    public Cart getCartByUser(User user) {
        return this.cartRepository.findByUser(user);
    }
}
