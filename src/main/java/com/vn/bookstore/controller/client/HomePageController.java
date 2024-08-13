package com.vn.bookstore.controller.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.Book;
import com.vn.bookstore.domain.Book_;
import com.vn.bookstore.domain.Category;
import com.vn.bookstore.domain.User;
import com.vn.bookstore.domain.dto.BookCriteriaDTO;
import com.vn.bookstore.service.BookService;
import com.vn.bookstore.service.CategoryService;
import com.vn.bookstore.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomePageController {
    private final BookService bookService;
    private final UserService userService;
    private final CategoryService categoryService;
    private final int totalBookInPage = 8;

    public HomePageController(BookService bookService, UserService userService, CategoryService categoryService) {
        this.bookService = bookService;
        this.userService = userService;
        this.categoryService = categoryService;
    }

    // Get Mapping
    @GetMapping("/")
    public String getHomePage(Model model, BookCriteriaDTO bookCriteriaDTO, HttpServletRequest request) {
        // paging variable
        int page = 1;
        try {
            if (bookCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(bookCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = null;
        if (bookCriteriaDTO.getSort() != null && bookCriteriaDTO.getSort().isPresent()) {
            String sort = bookCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).descending());
            } else {
                pageable = PageRequest.of(page - 1, totalBookInPage);

            }
        } else {
            pageable = PageRequest.of(page - 1, totalBookInPage);
        }

        Page<Book> bks = this.bookService.fetchAllBooks(pageable);

        List<Book> books = bks.getContent().size() > 0 ? bks.getContent() : new ArrayList<Book>();
        model.addAttribute("books", books);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", bks.getTotalPages());
        return "client/homepage/show";
    }

    @GetMapping("/book/{id}")
    public String getDetailPage(Model model, @PathVariable long id, BookCriteriaDTO bookCriteriaDTO) {
        // paging variable
        int page = 1;
        try {
            if (bookCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(bookCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = PageRequest.of(page - 1, totalBookInPage);
        Optional<Book> book = this.bookService.getBookById(id);
        Page<Book> bks = this.bookService.getBooksByCategory(pageable, book.get().getCategory());

        List<Book> sameBooks = bks.getContent().size() > 0 ? bks.getContent() : new ArrayList<Book>();
        if (book.isPresent()) {
            model.addAttribute("book", book.get());
            model.addAttribute("sameBooks", sameBooks);
            model.addAttribute("currentPage", page);
            model.addAttribute("totalPages", bks.getTotalPages());
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

    @GetMapping("/books")
    public String getBooksFilterPage(Model model, BookCriteriaDTO bookCriteriaDTO, HttpServletRequest request) {
        // paging variable
        int page = 1;
        try {
            if (bookCriteriaDTO.getPage().isPresent()) {
                // convert from String to int
                page = Integer.parseInt(bookCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }

        // check sort price
        Pageable pageable = null;
        if (bookCriteriaDTO.getSort() != null && bookCriteriaDTO.getSort().isPresent()) {
            String sort = bookCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, totalBookInPage, Sort.by(Book_.PRICE).descending());
            } else {
                pageable = PageRequest.of(page - 1, totalBookInPage);

            }
        } else {
            pageable = PageRequest.of(page - 1, totalBookInPage);
        }

        // fetch data
        // book
        Page<Book> bks = this.bookService.fetchBooksWithSpec(pageable, bookCriteriaDTO);

        List<Book> books = bks.getContent().size() > 0 ? bks.getContent() : new ArrayList<Book>();

        // category
        List<Category> categories = this.categoryService.fetchAllCategory();

        // query string
        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page:
            qs = qs.replace("page=" + page, "");
        }
        model.addAttribute("books", books);
        model.addAttribute("categories", categories);
        model.addAttribute("queryString", qs);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", bks.getTotalPages());
        return "client/books/show";
    }

    // Post Mapping
    @PostMapping("/profile")
    public String postUpdateUserClient(Model model, @ModelAttribute("newUser") User user,
            @RequestParam("avatarUpdateFileClient") MultipartFile file, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        Optional<User> currentUser = this.userService.handleUpdateUserForClient(user, file, session);
        return "redirect:/profile";
    }
}
