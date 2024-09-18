package com.example.demo.SerivceInterface;

import com.example.demo.Entity.Navigate;
import org.springframework.http.ResponseEntity;

import java.util.List;


public interface NavigateService {
    ResponseEntity<Navigate> saveNavigate(Navigate navigate);
    List<Navigate> getAllNavigates();
    List<Navigate> getNavigatesByTopic(String topic);
    Navigate getNavigateById(long id);
}
