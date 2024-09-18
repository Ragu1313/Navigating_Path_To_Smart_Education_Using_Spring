package com.example.demo.Entity;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class UserDetails {
    @Id
    private String email;
    private String username;
    private String password;

}
