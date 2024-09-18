package com.example.demo.Controller;

import com.example.demo.Entity.Navigate;
import com.example.demo.Entity.Topic;
import com.example.demo.SerivceInterface.NavigateService;
import com.example.demo.SerivceInterface.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller  // Use @Controller instead of @RestController
public class NavigateController {

    @Autowired
    private NavigateService navigateService;

    @Autowired
    private TopicService topicService;

//    @GetMapping("/get")
//    public ModelAndView search() {
//        return new ModelAndView("Home");
//    }

    @GetMapping("/get")
    public ModelAndView get() {
        ModelAndView modelAndView = new ModelAndView();

        // Fetch all navigates and add it to the model
        List<Navigate> allRecord = navigateService.getAllNavigates();  // Uncomment and implement this
        modelAndView.addObject("allRecord", allRecord);

        modelAndView.setViewName("Home");  // Looks for Home.jsp under WEB-INF/views/
        return modelAndView;
    }


    @PostMapping("/search")
    public ModelAndView TopicPage(@RequestParam Long id) {
        ModelAndView modelAndView = new ModelAndView();
        Navigate navigate = navigateService.getNavigateById(id);
        List<Topic> topic = topicService.getTopic(navigate.getId());
        modelAndView.addObject("topic", topic);
        modelAndView.setViewName("content");
        return modelAndView;
    }

    @GetMapping("/search1")
    public ModelAndView search(@RequestParam String search) {
        ModelAndView modelAndView = new ModelAndView();
        List<Navigate> allRecord = navigateService.getNavigatesByTopic(search);
        if(!allRecord.isEmpty()){
            modelAndView.addObject("allRecord", allRecord);
            modelAndView.setViewName("Home");
        }
        else {
            modelAndView.setViewName("NoRecordFound");
        }
        return modelAndView;
    }

    @PostMapping("/rating")
    public ModelAndView rating(@RequestParam Long topicId, @RequestParam int teacherId, @RequestParam int rating) {
        ModelAndView modelAndView = new ModelAndView();
        Topic topic = topicService.getByTopicIdAndTeacherId(topicId, teacherId);
        if (topic == null) {
            // Handle case where no topic is found
            throw new RuntimeException("Topic not found for the given topicId and teacherId");
        }
        topicService.calculateRating(topic, rating);
        List<Topic> listTopic = topicService.getTopic(topicId);
        modelAndView.addObject("topic", listTopic);
        modelAndView.setViewName("content");
        return modelAndView;
    }

}
