package com.example.demo.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Topic {
    @Id
//<<<<<<< HEAD
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//=======
    @GeneratedValue(strategy = GenerationType.AUTO)
//>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
    private int teacherId;
    private long topicId;
    private String teacherName;
    private double teacherRating;
    private String link;
}
