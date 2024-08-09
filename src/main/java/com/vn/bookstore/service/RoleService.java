package com.vn.bookstore.service;

import org.springframework.stereotype.Service;

import com.vn.bookstore.domain.Role;
import com.vn.bookstore.repository.RoleRepository;

@Service
public class RoleService {
    private final RoleRepository roleRepository;

    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role findRoleByName(String name) {
        return this.roleRepository.findTop1ByName(name);
    }

}
