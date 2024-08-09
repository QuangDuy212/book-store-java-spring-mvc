package com.vn.bookstore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vn.bookstore.domain.User;
import com.vn.bookstore.repository.RoleRepository;
import com.vn.bookstore.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final RoleService roleService;
    private final UploadService uploadService;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder, RoleService roleService,
            UploadService uploadService) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.roleService = roleService;
        this.uploadService = uploadService;
    }

    public Page<User> fetchAllUsers(Pageable pageable) {
        return this.userRepository.findAll(pageable);
    }

    public List<User> fetchAllUsers() {
        return this.userRepository.findAll();
    }

    public void createAUser(User user, MultipartFile file) {
        user.setPassword(this.passwordEncoder.encode(user.getPassword()));
        user.setRole(this.roleService.findRoleByName(user.getRole().getName()));
        if (file != null) {
            String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
            if (avatar != "") {
                user.setAvatar(avatar);
            }
        }
        this.userRepository.save(user);
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }
}
