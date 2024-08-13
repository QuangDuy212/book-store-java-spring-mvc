package com.vn.bookstore.service.specification;

import java.util.List;

import org.springframework.data.jpa.domain.Specification;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.domain.Book_;

public class BookSpecs {
    public static Specification<Book> nameLike(String name) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Book_.MAIN_TEXT), "%" + name + "%");
    }

    // case 1
    public static Specification<Book> minPrice(double price) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.ge(root.get(Book_.PRICE), price);
    }

    // case 2
    public static Specification<Book> maxPrice(double price) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.le(root.get(Book_.PRICE), price);
    }

    // case3
    public static Specification<Book> matchCategory(String factory) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(Book_.CATEGORY), factory);
    }

    // case4
    public static Specification<Book> matchListCategory(List<String> factory) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Book_.CATEGORY)).value(factory);
    }

    // case5
    public static Specification<Book> matchPrice(double min, double max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.and(
                criteriaBuilder.gt(root.get(Book_.PRICE), min),
                criteriaBuilder.le(root.get(Book_.PRICE), max));
    }

    // case6
    public static Specification<Book> matchMultiplePrice(double min, double max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.between(
                root.get(Book_.PRICE), min, max);
    }
}
