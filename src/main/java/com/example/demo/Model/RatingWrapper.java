package com.example.demo.Model;

import lombok.Data;

@Data
public class RatingWrapper {
    private Long topicId;
    private int teacherId   ;
    private String userEmail;
    private int rating;
}
