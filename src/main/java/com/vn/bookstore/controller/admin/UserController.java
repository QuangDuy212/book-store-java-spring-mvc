package com.vn.bookstore.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.User;
import com.vn.bookstore.service.RoleService;
import com.vn.bookstore.service.UploadService;
import com.vn.bookstore.service.UserService;

import jakarta.validation.Valid;

@Controller
public class UserController {
    private final UserService userService;
    private final RoleService roleService;
    private final UploadService uploadService;
    private PasswordEncoder passwordEncoder;

    public UserController(UserService userService, RoleService roleService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.roleService = roleService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/admin/user")
    public String getUserAdminPage(Model model) {
        List<User> users = this.userService.fetchAllUsers();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserAdminPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String postCreateUserAdmin(Model model, @ModelAttribute("newUser") @Valid User user,
            BindingResult newUserBindingResult,
            @RequestParam("hoidanitFile") MultipartFile file) {
        // validate
        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>" + error.getField() + " - " +
                    error.getDefaultMessage());
        }
        if (newUserBindingResult.hasErrors()) {
            return "/admin/user/create";
        }
        this.userService.createAUser(user, file);
        return "redirect:/admin/user";
    }

    @PostMapping("/admin/user/detail")
    public String postUpdateUserAdmin(Model model, @ModelAttribute("newUser") User user,
            @RequestParam("avatarUpdateFile") MultipartFile file) {
        Optional<User> currentUser = this.userService.handleUpdateUser(user, file);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/detail/{id}")
    public String getViewUserAdminPage(Model model, @PathVariable long id) {
        Optional<User> user = this.userService.getUserById(id);
        if (user.isPresent()) {
            model.addAttribute("user", user.get());
            model.addAttribute("newUser", user.get());
        }
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserAdminPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("user", new User());
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUserAdmin(Model model, @ModelAttribute("user") User user) {
        this.userService.handleDeleteUser(user.getId());
        return "redirect:/admin/user";
    }
}
