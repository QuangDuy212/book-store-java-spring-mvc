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
            } else {
                user.setAvatar("default-avatar.webp");
            }
        }
        this.userRepository.save(user);
    }

    public Optional<User> handleUpdateUser(User user, MultipartFile file) {
        Optional<User> currentUser = this.getUserById(user.getId());
        if (currentUser.isPresent()) {
            currentUser.get().setFullName(user.getFullName());
            currentUser.get().setGender(user.getGender());
            currentUser.get().setRole(this.roleService.findRoleByName(user.getRole().getName()));
            currentUser.get().setPhone(user.getPhone());
            currentUser.get().setAddress(user.getAddress());
            if (!file.isEmpty()) {
                String avatar = this.uploadService.handleSaveUploadFile(file, "avatar");
                if (avatar != "") {
                    currentUser.get().setAvatar(avatar);
                }
            }
            this.userRepository.save(currentUser.get());
        }
        return currentUser;
    }

    public void handleDeleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public Optional<User> getUserById(long id) {
        return this.userRepository.findById(id);
    }
}
