package com.vn.bookstore.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.vn.bookstore.domain.Category;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.service.CategoryService;

import jakarta.validation.Valid;

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

    @GetMapping("/admin/category/create")
    public String getCreateCategoryAdminPage(Model model) {
        model.addAttribute("newCategory", new Category());
        return "admin/category/create";
    }

    @GetMapping("/admin/category/delete/{id}")
    public String getDeleteCategoryAdminPage(Model model, @PathVariable long id) {
        model.addAttribute("category", new Category());
        model.addAttribute("id", id);
        return "admin/category/delete";
    }

    @PostMapping("/admin/category/create")
    public String postCreateCategoryAdmin(Model model, @ModelAttribute("newCategory") @Valid Category category) {
        this.categoryService.handleCreateACategory(category);
        return "redirect:/admin/category";
    }

    @PostMapping("/admin/category/delete")
    public String postDeleteCategoryAdmin(Model model, @ModelAttribute("category") Category category) {
        this.categoryService.handleDeleteACategory(category);
        return "redirect:/admin/category";
    }
}
