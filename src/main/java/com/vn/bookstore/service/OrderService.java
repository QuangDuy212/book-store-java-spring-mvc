package com.vn.bookstore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Order;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.repository.OrderRepository;

@Service
public class OrderService {
    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public List<Order> fetchOrderByUser(User user) {
        return this.orderRepository.findByUser(user);
    }

    public Optional<Order> fetchOrderById(Long id) {
        return this.orderRepository.findById(id);
    }
}
