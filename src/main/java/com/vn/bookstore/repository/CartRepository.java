package com.vn.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vn.bookstore.domain.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

}