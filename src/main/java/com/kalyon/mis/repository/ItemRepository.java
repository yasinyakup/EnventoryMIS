package com.kalyon.mis.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kalyon.mis.entity.Item;

@Repository
public interface ItemRepository extends JpaRepository<Item, Long> {

}
