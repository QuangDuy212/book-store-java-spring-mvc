package com.vn.bookstore.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Cart;
import com.vn.bookstore.domain.CartDetail;
import com.vn.bookstore.repository.CartDetailRepository;

@Service
public class CartDetailService {
    private final CartDetailRepository cartDetailRepository;

    public CartDetailService(CartDetailRepository cartDetailRepository) {
        this.cartDetailRepository = cartDetailRepository;
    }

    public List<CartDetail> fetchCartDetailsByCart(Cart cart) {
        return this.cartDetailRepository.findByCart(cart);
    }

}
