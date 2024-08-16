package com.vn.bookstore.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.vn.bookstore.service.BookService;
import com.vn.bookstore.service.CategoryService;
import com.vn.bookstore.service.OrderService;
import com.vn.bookstore.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;
    private final OrderService orderService;
    private final BookService bookService;
    private final CategoryService categoryService;

    public DashboardController(UserService userService, OrderService orderService, BookService bookService,
            CategoryService categoryService) {
        this.userService = userService;
        this.orderService = orderService;
        this.bookService = bookService;
        this.categoryService = categoryService;
    }

    @GetMapping("/admin")
    public String getDashboardPage(Model model) {
        long users = this.userService.countUser();
        long orders = this.orderService.countOrder();
        long books = this.bookService.countBook();
        long categories = this.categoryService.countCategory();
        model.addAttribute("users", users);
        model.addAttribute("orders", orders);
        model.addAttribute("books", books);
        model.addAttribute("categories", categories);
        return "admin/dashboard/show";
    }
}
