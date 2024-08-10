package com.vn.bookstore.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {

    @GetMapping("/admin/book")
    public String getUserAdminPage(Model model) {
        return "admin/book/show";
    }
}
