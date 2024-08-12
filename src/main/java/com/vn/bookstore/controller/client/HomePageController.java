package com.vn.bookstore.controller.client;

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
import com.vn.bookstore.domain.User;
import com.vn.bookstore.service.BookService;
import com.vn.bookstore.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomePageController {
    private final BookService bookService;
    private final UserService userService;

    public HomePageController(BookService bookService, UserService userService) {
        this.bookService = bookService;
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Book> books = this.bookService.fetchAllBooks();
        model.addAttribute("books", books);
        return "client/homepage/show";
    }

    @GetMapping("/book/{id}")
    public String getDetailPage(Model model, @PathVariable long id) {
        Optional<Book> book = this.bookService.getBookById(id);
        List<Book> sameBooks = this.bookService.getBooksByCategory(book.get().getCategory());
        if (book.isPresent()) {
            model.addAttribute("book", book.get());
            model.addAttribute("sameBooks", sameBooks);
        }
        return "client/homepage/detail";
    }

    @GetMapping("/profile")
    public String getProfilePage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        Optional<User> user = this.userService.getUserById(id);
        model.addAttribute("user", user.get());
        model.addAttribute("newUser", user.get());
        return "client/profile/show";
    }

    @PostMapping("/profile")
    public String postUpdateUserClient(Model model, @ModelAttribute("newUser") User user,
            @RequestParam("avatarUpdateFileClient") MultipartFile file, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Optional<User> currentUser = this.userService.handleUpdateUserForClient(user, file, session);
        return "redirect:/profile";
    }
}
