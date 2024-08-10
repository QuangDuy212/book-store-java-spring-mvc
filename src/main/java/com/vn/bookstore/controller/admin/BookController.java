package com.vn.bookstore.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.domain.Category;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.service.BookService;
import com.vn.bookstore.service.CategoryService;

@Controller
public class BookController {

    private final BookService bookService;
    private final CategoryService categoryService;

    public BookController(BookService bookService, CategoryService categoryService) {
        this.bookService = bookService;
        this.categoryService = categoryService;
    }

    @GetMapping("/admin/book")
    public String getBookAdminPage(Model model) {
        List<Book> books = this.bookService.fetchAllBooks();
        model.addAttribute("books", books);
        return "admin/book/show";
    }

    @GetMapping("/admin/book/create")
    public String getCreateBookAdminPage(Model model) {
        List<Category> categories = this.categoryService.fetchAllCategory();

        // attribute for web
        model.addAttribute("newBook", new Book());
        model.addAttribute("categories", categories);
        return "admin/book/create";
    }

    @PostMapping("/admin/book/create")
    public String postCreateBookAdmin(Model model, @ModelAttribute("newBook") Book book,
            @RequestParam("avatarUpdateFile") MultipartFile file) {
        return "redirect:/admin/user";
    }
}
