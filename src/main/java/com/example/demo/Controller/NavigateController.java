package com.example.demo.Controller;

import com.example.demo.Entity.Navigate;
import com.example.demo.Entity.Topic;
import com.example.demo.Entity.UserDetails;
import com.example.demo.Model.RatingWrapper;
import com.example.demo.SerivceInterface.NavigateService;
import com.example.demo.SerivceInterface.TopicService;
import com.example.demo.SerivceInterface.UserDetailsService;
import com.example.demo.SerivceInterface.UserRatingService;
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

    @Autowired
    private UserRatingService userRatingService;

    @Autowired
    private UserDetailsService userDetailsService;

//    @GetMapping("/get")
//    public ModelAndView search() {
//        return new ModelAndView("Home");
//    }
    @GetMapping("/home")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("Login");
        return modelAndView;
    }
    @PostMapping("/loginRequest")
    public ModelAndView loginRequest(@RequestParam String email, @RequestParam String password) {
        ModelAndView modelAndView = new ModelAndView();
        int check = userDetailsService.check(email,password);
//        System.out.println(check);

        if(check==-1) { modelAndView.addObject("email",email); modelAndView.setViewName("SignInWithAlert");}
        else if(check==0)   { modelAndView.addObject("email",email);  modelAndView.setViewName("loginWithAlert"); }
        else        modelAndView.setViewName("Home");
//        System.out.println("Hi");
        List<Navigate> allRecord = navigateService.getAllNavigates();
        modelAndView.addObject("userEmail",email);
        modelAndView.addObject("allRecord",allRecord);
        return modelAndView;
    }

    @GetMapping("signIn")
    public ModelAndView signIn() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("SignIn");
        return modelAndView;
    }
    @PostMapping("signInRequest")
    public ModelAndView signInRequest(UserDetails userDetails) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("before");
        boolean validate = userDetailsService.checkAndSave(userDetails);
        if(validate)    modelAndView.setViewName("Home");
        else    modelAndView.setViewName("loginWithAlert");
        System.out.println("after");
        List<Navigate> allRecord = navigateService.getAllNavigates();
        modelAndView.addObject("email",userDetails.getEmail());
        modelAndView.addObject("allRecord",allRecord);
        return modelAndView;
    }

    @PostMapping("/get")
    public ModelAndView get(@ModelAttribute UserDetails userDetails) {
        ModelAndView modelAndView = new ModelAndView();

        // Fetch all navigates and add it to the model
        List<Navigate> allRecord = navigateService.getAllNavigates();  // Uncomment and implement this
        userDetailsService.save(userDetails);
        modelAndView.addObject("allRecord", allRecord);
        modelAndView.addObject("userEmail",userDetails.getEmail());
        modelAndView.setViewName("Home");  // Looks for Home.jsp under WEB-INF/views/
        return modelAndView;
    }


    @PostMapping("/search")
    public ModelAndView TopicPage(@RequestParam Long id,String userEmail) {
        ModelAndView modelAndView = new ModelAndView();
        Navigate navigate = navigateService.getNavigateById(id);
        List<Topic> topic = topicService.getTopic(navigate.getId());
        modelAndView.addObject("topic", topic);
        modelAndView.addObject("userEmail",userEmail);
        modelAndView.setViewName("content");
        return modelAndView;
    }

    @GetMapping("/search1")
    public ModelAndView search(@RequestParam String search ,String userEmail) {
        ModelAndView modelAndView = new ModelAndView();
        List<Navigate> allRecord = navigateService.getNavigatesByTopic(search);
        modelAndView.addObject("userEmail", userEmail);
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
    public ModelAndView rating(@ModelAttribute RatingWrapper ratingWrapper) {
        long topicId = ratingWrapper.getTopicId();
        int teacherId = ratingWrapper.getTeacherId();
        String userEmail = ratingWrapper.getUserEmail();
        int rating = ratingWrapper.getRating();
        System.out.println(rating);
        System.out.println(topicId);
        System.out.println(teacherId);
        ModelAndView modelAndView = new ModelAndView();
        Topic topic = topicService.getByTopicIdAndTeacherId(topicId, teacherId);
        List<Topic> listTopic = topicService.getTopic(topicId);
        modelAndView.addObject("topic", listTopic);
        if (topic == null) {
            // Handle case where no topic is found
            throw new RuntimeException("Topic not found for the given topicId and teacherId");
        }
        if(userRatingService.check(topicId,teacherId,userEmail)){
            modelAndView.setViewName("DuplicateRating");
            System.out.println(rating+1);
        }
        else {
            userRatingService.save(topicId,teacherId,userEmail,rating);
            topicService.calculateRating(topic, rating);
            modelAndView.setViewName("content");
            System.out.println(rating+2);
        }
        System.out.println(rating);
        return modelAndView;
    }

    @PostMapping("/gettingRating")
    public ModelAndView gettingRating(@RequestParam int teacherId , @RequestParam String userEmail,@RequestParam Long topicId) {
        ModelAndView modelAndView = new ModelAndView();;
        modelAndView.addObject("userEmail", userEmail);
        modelAndView.addObject("topicId", topicId);
        modelAndView.addObject("teacherId",teacherId);
        modelAndView.setViewName("rating");
        return modelAndView;
    }


}
