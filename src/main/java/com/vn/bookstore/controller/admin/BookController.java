package com.vn.bookstore.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping("/admin/book/detail/{id}")
    public String getDetailBookAdminPage(Model model, @PathVariable long id) {
        Optional<Book> book = this.bookService.getBookById(id);
        List<Category> categories = this.categoryService.fetchAllCategory();
        if (book.isPresent()) {
            model.addAttribute("book", book.get());
            model.addAttribute("categories", categories);
            return "admin/book/detail";
        }
        return "redirect:/admin/book";
    }

    @GetMapping("/admin/book/update/{id}")
    public String getUpdateBookAdminPage(Model model, @PathVariable long id) {
        Optional<Book> book = this.bookService.getBookById(id);
        List<Category> categories = this.categoryService.fetchAllCategory();
        if (book.isPresent()) {
            model.addAttribute("book", book.get());
            model.addAttribute("categories", categories);
            return "admin/book/update";
        }
        return "redirect:/admin/book";
    }

    @GetMapping("/admin/book/delete/{id}")
    public String getDeleteBookAdminPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("book", new Book());
        return "admin/book/delete";
    }

    @PostMapping("/admin/book/create")
    public String postCreateBookAdmin(Model model, @ModelAttribute("newBook") Book book,
            @RequestParam("createBookFile") MultipartFile file) {
        if (file.isEmpty())
            return "redirect:/admin/book/create";
        this.bookService.createABook(book, file);
        return "redirect:/admin/book";
    }

    @PostMapping("/admin/book/update")
    public String postUpdateBookAdmin(Model model, @ModelAttribute("book") Book book,
            @RequestParam("updateBookFile") MultipartFile file) {
        this.bookService.handleUpdateABook(book, file);
        return "redirect:/admin/book";
    }

    @PostMapping("/admin/book/delete")
    public String postDeleteBookAdmin(Model model, @ModelAttribute("book") Book book) {
        this.bookService.handleDeleteBook(book.getId());
        return "redirect:/admin/book";
    }
}
