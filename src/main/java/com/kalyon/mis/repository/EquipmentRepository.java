package com.kalyon.mis.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kalyon.mis.entity.Equipment;

public interface EquipmentRepository extends JpaRepository<Equipment, Long> {

}
