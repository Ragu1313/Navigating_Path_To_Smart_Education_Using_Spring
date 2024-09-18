package com.example.demo.Repo;

import com.example.demo.Entity.UserRating;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRatingRepository extends JpaRepository<UserRating,Long> {

    boolean existsByUserEmailAndTopicIdAndTeacherId(String userEmail, long topicId, int teacherId);
}
