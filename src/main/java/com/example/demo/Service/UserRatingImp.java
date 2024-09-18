package com.example.demo.Service;

import com.example.demo.Entity.UserDetails;
import com.example.demo.Entity.UserRating;
import com.example.demo.Repo.UserDetailsRepository;
import com.example.demo.Repo.UserRatingRepository;
import com.example.demo.SerivceInterface.UserRatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserRatingImp implements UserRatingService {

    @Autowired
    UserRatingRepository userRatingRepository;


    @Override
    public boolean check(long topicId, int teacherId, String userEmail) {
        System.out.println("Checking for topicId: " + topicId + ", teacherId: " + teacherId + ", userEmail: " + userEmail);
        return userRatingRepository.existsByUserEmailAndTopicIdAndTeacherId(userEmail, topicId, teacherId);
    }

    @Override
    public void save(Long topicId, int teacherId, String userEmail,double rating) {
        userRatingRepository.save(new UserRating(userEmail,topicId,teacherId,rating));
    }


}
