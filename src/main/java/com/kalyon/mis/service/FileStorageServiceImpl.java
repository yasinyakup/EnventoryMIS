package com.kalyon.mis.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Stream;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Component;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileStorageServiceImpl implements FileStorageService {

	private final Path root = Paths.get("uploads");

	@Override
	public void init() {

		try {
			Files.createDirectories(root);
			System.out.println(root.toFile().getAbsolutePath().toString());
		} catch (IOException e) {
			throw new RuntimeException("Kılasör oluşrutulamadı!");
		}

	}

	@Override
	public void save(MultipartFile file) {

		try {
			Files.copy(file.getInputStream(), this.root.resolve(file.getOriginalFilename()));
		} catch (IOException e) {
			throw new RuntimeException("Dosya kayıt edilemedi. Hata: " + e.getMessage());
		}

	}

	@Override
	public Resource load(String fileName) {

		try {
			Path file = root.resolve(fileName);
			Resource resource = new UrlResource(file.toUri());

			if (resource.exists() || resource.isReadable()) {
				return resource;
			} else {
				throw new RuntimeException("Dosya okunamadı");
			}
		} catch (MalformedURLException e) {
			throw new RuntimeException("Hata: " + e.getMessage());
		}
	}

	@Override
	public void deleteAll() {
		FileSystemUtils.deleteRecursively(root.toFile());

	}

	@Override
	public Stream<Path> loadAll() {
		try {
			return Files.walk(root, 1).filter(path -> !path.equals(this.root)).map(this.root::relativize);
		} catch (IOException e) {

			throw new RuntimeException("Dosyalar yüklenemedi.");
		}
	}

}
