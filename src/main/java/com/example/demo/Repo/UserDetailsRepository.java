package com.example.demo.Repo;

import com.example.demo.Entity.UserDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDetailsRepository extends JpaRepository<UserDetails, String> {

    UserDetails getByEmail(String email);
}
