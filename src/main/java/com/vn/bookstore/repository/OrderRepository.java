package com.vn.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vn.bookstore.domain.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

}
