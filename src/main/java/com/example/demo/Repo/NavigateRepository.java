package com.example.demo.Repo;

import com.example.demo.Entity.Navigate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface NavigateRepository extends JpaRepository<Navigate, Long> {
    List<Navigate> findByTopicContainingIgnoreCase(String topic);
}
