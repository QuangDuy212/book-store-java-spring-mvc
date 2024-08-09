package com.vn.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vn.bookstore.domain.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findTop1ByName(String name);
}
