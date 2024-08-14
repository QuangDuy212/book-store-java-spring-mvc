package com.vn.bookstore.service.specification;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

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
    public static Specification<Book> matchCategory(String category) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(Book_.CATEGORY), category);
    }

    // case4
    public static Specification<Book> matchListCategory(List<String> category) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Book_.CATEGORY)).value(category);
    }

    public static Specification<Book> matchListCategoryId(List<String> category) {
        List<Long> categoryId = new ArrayList<Long>();
        for (String s : category)
            categoryId.add(Long.valueOf(s));
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Book_.ID)).value(categoryId);
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
