package com.example.demo.Repo;

import com.example.demo.Entity.Navigate;
import org.springframework.data.jpa.repository.JpaRepository;
<<<<<<< HEAD
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface NavigateRepository extends JpaRepository<Navigate, Long> {
    List<Navigate> findByTopicContainingIgnoreCase(String topic);
=======

import java.util.List;

public interface NavigateRepository extends JpaRepository<Navigate, Long> {
    List<Navigate> findByTopicContainingIgnoreCase(String topic);

>>>>>>> 3f0418a43198de13075de5d6ba9aceca54df320b
}
