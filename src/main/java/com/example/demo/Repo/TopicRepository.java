package com.example.demo.Repo;

import com.example.demo.Entity.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TopicRepository extends JpaRepository<Topic, Integer> {
    List<Topic> findByTopicIdOrderByTeacherRatingDesc(long id);
    Topic findByTopicIdAndTeacherId(long topicId, int teacherId);
}
