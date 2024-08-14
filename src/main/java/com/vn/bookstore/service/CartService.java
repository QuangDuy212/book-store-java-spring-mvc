package com.vn.bookstore.service;

import org.springframework.stereotype.Service;

import com.vn.bookstore.repository.CartRepository;

@Service
public class CartService {
    private final CartRepository cartRepository;

    public CartService(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

}
