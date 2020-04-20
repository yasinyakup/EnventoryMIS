package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kalyon.mis.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

}
