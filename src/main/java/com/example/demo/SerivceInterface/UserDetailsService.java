package com.example.demo.SerivceInterface;

import com.example.demo.Entity.UserDetails;

public interface UserDetailsService {
    void save(UserDetails userDetails);

    int check(String email, String password);

    boolean checkAndSave(UserDetails userDetails);
}
