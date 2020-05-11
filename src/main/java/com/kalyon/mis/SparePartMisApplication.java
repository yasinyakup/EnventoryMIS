package com.kalyon.mis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.kalyon.mis.service.FileStorageService;

@SpringBootApplication
public class SparePartMisApplication 
implements CommandLineRunner{

	@Autowired
	FileStorageService fileStorageService;
	
	public static void main(String[] args) {
		SpringApplication.run(SparePartMisApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		fileStorageService.deleteAll();
		fileStorageService.init();
	
		
	}

}
