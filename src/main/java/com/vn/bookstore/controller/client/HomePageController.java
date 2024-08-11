package com.vn.bookstore.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.service.BookService;

@Controller
public class HomePageController {
    private final BookService bookService;

    public HomePageController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Book> books = this.bookService.fetchAllBooks();
        model.addAttribute("books", books);
        return "client/homepage/show";
    }
}
