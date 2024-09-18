package com.example.demo.Repo;

import com.example.demo.Entity.Topic;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface TopicRepository extends JpaRepository<Topic, Integer> {
    List<Topic> findByTopicId(long id);
    Topic findByTopicIdAndTeacherId(Long topicId, Integer teacherId);
}
