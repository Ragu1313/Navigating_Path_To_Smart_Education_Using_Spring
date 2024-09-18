package com.example.demo.SerivceInterface;

import com.example.demo.Entity.Topic;

import java.util.List;

public interface TopicService {
    public List<Topic> getTopic(long id);
    public Topic getByTopicIdAndTeacherId(long topicId, int teacherId);

    void calculateRating(Topic topic,int newRating);
}
