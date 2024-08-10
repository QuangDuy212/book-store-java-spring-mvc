package com.vn.bookstore.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Category;
import com.vn.bookstore.repository.CategoryRepository;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> fetchAllCategory() {
        return this.categoryRepository.findAll();
    }
}
