package com.example.demo.SerivceInterface;


import com.example.demo.Entity.UserDetails;

public interface UserRatingService {

    public boolean check(long topicId,int teacherId,String userEmail);


    void save(Long topicId, int teacherId, String userEmail,double rating);
}
