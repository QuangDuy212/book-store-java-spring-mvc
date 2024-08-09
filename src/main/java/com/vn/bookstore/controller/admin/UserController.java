package com.vn.bookstore.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    @GetMapping("/admin/user")
    public String getUserAdminPage(Model model) {
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserAdminPage(Model model) {
        return "admin/user/create";
    }

    @GetMapping("/admin/user/update")
    public String getUpdateUserAdminPage(Model model) {
        return "admin/user/update";
    }
}
