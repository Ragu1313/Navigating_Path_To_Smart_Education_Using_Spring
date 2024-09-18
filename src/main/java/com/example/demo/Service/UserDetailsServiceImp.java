package com.example.demo.Service;

import com.example.demo.Entity.UserDetails;
import com.example.demo.Repo.UserDetailsRepository;
import com.example.demo.SerivceInterface.UserDetailsService;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImp implements UserDetailsService {
    @Autowired
    private UserDetailsRepository userDetailsRepository;
    @Override
    public void save(UserDetails userDetails) {
        userDetailsRepository.save(userDetails);
    }

    @Override
    public int check(String email, String password) {
        UserDetails userDetails = userDetailsRepository.getByEmail(email);
        if(userDetails==null)
                return -1;
        if (userDetails.getPassword().equals(password)) {
            return 1; // Password matches
        }
        return 0;
    }

    @Override
    public boolean checkAndSave(UserDetails userDetails) {
        UserDetails userDetails1 = userDetailsRepository.getByEmail(userDetails.getEmail());
        if(userDetails1==null){
            userDetailsRepository.save(userDetails);
            return true;
        }
        return false;
    }
}
