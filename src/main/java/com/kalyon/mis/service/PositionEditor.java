package com.kalyon.mis.service;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;

import com.kalyon.mis.repository.PositionRepository;

public class PositionEditor extends PropertyEditorSupport {

	@Autowired
	PositionRepository positionRepository;
	
	public void setAsText(String id) throws IllegalArgumentException {
		
	setValue(positionRepository.findById(Long.parseLong(id)));
	}
}
