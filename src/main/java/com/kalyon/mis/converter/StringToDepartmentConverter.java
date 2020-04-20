package com.kalyon.mis.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.kalyon.mis.entity.Department;
import com.kalyon.mis.repository.DepartmentRepository;


/*
 * custom converter, bir data tipinden diğer daha komplex data tipine dönüştürmek için kullanılır.
 */
@Component
public class StringToDepartmentConverter implements Converter<String, Department> {

	@Autowired
	private DepartmentRepository departmentRepository;

	
	@Override
	public Department convert(String source) {
		// TODO Auto-generated method stub

		Department department = departmentRepository.getOne(Long.getLong(source));
		System.out.println("department converter baslatildi!!!!!!");
		System.out.println("departnmet name:" + department.getName());

		return department;
	}

}
