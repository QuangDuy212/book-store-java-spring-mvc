package com.vn.bookstore.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vn.bookstore.domain.Book;

@Repository
public interface BookReposity extends JpaRepository<Book, Long> {
    Optional<Book> findById(long id);
}
