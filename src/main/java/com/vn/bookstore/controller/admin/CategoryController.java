package com.vn.bookstore.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.vn.bookstore.domain.Category;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.service.CategoryService;

@Controller
public class CategoryController {
    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/admin/category")
    public String getCategoryAdminPage(Model model) {
        List<Category> categories = this.categoryService.fetchAllCategory();
        model.addAttribute("categories", categories);
        return "admin/category/show";
    }
}
