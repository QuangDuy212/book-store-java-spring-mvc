package com.vn.bookstore.service;

import org.springframework.stereotype.Service;

import com.vn.bookstore.repository.OrderRepository;

@Service
public class OrderService {
    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

}
