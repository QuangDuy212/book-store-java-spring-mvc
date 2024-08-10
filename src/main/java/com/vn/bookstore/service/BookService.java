package com.vn.bookstore.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.repository.BookReposity;

@Service
public class BookService {
    private final BookReposity bookReposity;

    public BookService(BookReposity bookReposity) {
        this.bookReposity = bookReposity;
    }

    public List<Book> fetchAllBooks() {
        return this.bookReposity.findAll();
    }

    public Page<Book> fetchAllBooks(Pageable pageable) {
        return this.bookReposity.findAll(pageable);
    }

}
