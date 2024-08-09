package com.vn.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vn.bookstore.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
