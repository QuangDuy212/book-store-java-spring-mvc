package com.vn.bookstore.service;

import org.springframework.stereotype.Service;

import com.vn.bookstore.repository.OrderDetailRepository;

@Service
public class OrderDetailService {
    private final OrderDetailRepository orderDetailRepository;

    public OrderDetailService(OrderDetailRepository orderDetailRepository) {
        this.orderDetailRepository = orderDetailRepository;
    }

}
