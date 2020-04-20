package com.kalyon.mis.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.kalyon.mis.entity.Position;
import com.kalyon.mis.repository.PositionRepository;

@Component
public class StringToPositionConverter implements Converter<String, Position> {

	@Autowired
	private PositionRepository positionRepository;

	@Override
	public Position convert(String source) {
		// TODO Auto-generated method stub
		System.out.println("converter baslatildi!!!!!!");
		return positionRepository.getOne(Long.getLong(source));
	}

}
