package com.vn.bookstore.service.validator;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.dto.RegisterDTO;
import com.vn.bookstore.service.UserService;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Service
public class RegisterValidator implements ConstraintValidator<RegisterChecked, RegisterDTO> {

    private final UserService userService;

    public RegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean isValid(RegisterDTO user, ConstraintValidatorContext context) {
        boolean valid = true;

        // Check if password fields match
        if (!user.getPassword().equals(user.getConfirmPassword())) {
            context.buildConstraintViolationWithTemplate("Passwords must match")
                    .addPropertyNode("confirmPassword")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        // Additional validations can be added here
        // Check email
        if (this.userService.checkEmailExist(user.getEmail())) {
            context.buildConstraintViolationWithTemplate("Email existed")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        if (user.getEmail() == "") {
            context.buildConstraintViolationWithTemplate("Email invalid")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        return valid;
    }
}
