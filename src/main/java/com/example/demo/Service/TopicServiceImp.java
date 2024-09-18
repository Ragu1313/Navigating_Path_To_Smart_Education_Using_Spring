package com.example.demo.Service;

import com.example.demo.Entity.Topic;
import com.example.demo.Repo.TopicRepository;
import com.example.demo.SerivceInterface.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class TopicServiceImp implements TopicService {
    @Autowired
    private TopicRepository topicRepository;

    @Override
    public List<Topic> getTopic(long id) {
        return topicRepository.findByTopicId(id);
    }

    @Override
    public Topic getByTopicIdAndTeacherId(long topicId, int teacherId) {
        return  topicRepository.findByTopicIdAndTeacherId(topicId,  teacherId);
    }

    @Override
    public void calculateRating(Topic topic, int rating) {
        double oldRating = topic.getTeacherRating();
        double newRating = (oldRating + rating)/2;
        topic.setTeacherRating(newRating);
        topicRepository.save(topic);
    }
}
