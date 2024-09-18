package com.example.demo.Service;

import com.example.demo.Entity.Navigate;
import com.example.demo.Repo.NavigateRepository;
import com.example.demo.SerivceInterface.NavigateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NavigateServiceImp implements NavigateService {

    @Autowired
    private NavigateRepository navigateRepository;

    @Override
    public ResponseEntity<Navigate> saveNavigate(Navigate navigate) {
       return ResponseEntity.ok(navigateRepository.save(navigate));
    }

    @Override
    public List<Navigate> getAllNavigates() {
        return navigateRepository.findAll();
    }

    @Override
    public List<Navigate> getNavigatesByTopic(String topic) {
        return navigateRepository.findByTopicContainingIgnoreCase(topic);
    }

    @Override
    public Navigate getNavigateById(long id) {
        return navigateRepository.findById(id).get();
    }

}
