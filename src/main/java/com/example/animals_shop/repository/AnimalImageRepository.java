package com.example.animals_shop.repository;

import com.example.animals_shop.model.AnimalImage;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnimalImageRepository extends JpaRepository<AnimalImage, Integer> {

}
