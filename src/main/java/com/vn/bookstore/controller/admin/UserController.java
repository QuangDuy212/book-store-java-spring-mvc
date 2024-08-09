package com.vn.bookstore.controller.admin;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
        user.setPassword(this.passwordEncoder.encode(user.getPassword()));
        user.setRole(this.roleService.findRoleByName(user.getRole().getName()));
        if (file != null) {
            String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
            if (avatar != "") {
                user.setAvatar(avatar);
            }
        }

        this.userService.createAUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/update")
    public String getUpdateUserAdminPage(Model model) {
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUserAdmin(Model model) {
        return "admin/user/update";
    }
}
