package com.vn.bookstore.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.User;
import com.vn.bookstore.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void createAUser(User user) {
        this.userRepository.save(user);
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }
}
