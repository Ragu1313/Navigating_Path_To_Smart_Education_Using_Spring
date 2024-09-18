package com.example.demo.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class UserRating {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ratingId;
    private String userEmail;
    private double rating;
    private int teacherId;
    private long topicId;

    public UserRating() {

    }
    public UserRating(String userEmail, Long topicId, int teacherId, double rating) {
        this.userEmail = userEmail;
        this.rating = rating;
        this.teacherId = teacherId;
        this.topicId = topicId;
    }


}
