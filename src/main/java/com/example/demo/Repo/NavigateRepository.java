package com.example.demo.Repo;

import com.example.demo.Entity.Navigate;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NavigateRepository extends JpaRepository<Navigate, Long> {
    List<Navigate> findByTopicContainingIgnoreCase(String topic);

}
