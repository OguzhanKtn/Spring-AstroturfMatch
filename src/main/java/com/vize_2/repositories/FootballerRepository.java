package com.vize_2.repositories;

import com.vize_2.entities.Footballer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FootballerRepository extends JpaRepository<Footballer, Long> {
    boolean existsByEmailEquals(String email);

}