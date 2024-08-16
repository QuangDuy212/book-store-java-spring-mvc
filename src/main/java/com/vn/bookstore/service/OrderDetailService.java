package com.vn.bookstore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Order;
import com.vn.bookstore.domain.OrderDetail;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.repository.OrderDetailRepository;
import com.vn.bookstore.repository.OrderRepository;

@Service
public class OrderDetailService {
    private final OrderDetailRepository orderDetailRepository;
    private final OrderRepository orderRepository;

    public OrderDetailService(OrderDetailRepository orderDetailRepository, OrderRepository orderRepository) {
        this.orderDetailRepository = orderDetailRepository;
        this.orderRepository = orderRepository;
    }

}
