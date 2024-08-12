package com.vn.bookstore.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {
    @GetMapping("/login")
    public String getLoginPage(Model model) {
        return "client/auth/login";
    }
}
