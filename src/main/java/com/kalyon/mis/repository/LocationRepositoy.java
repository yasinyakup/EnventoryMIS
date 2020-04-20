package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kalyon.mis.entity.Location;

public interface LocationRepositoy extends JpaRepository<Location, Long> {

}
