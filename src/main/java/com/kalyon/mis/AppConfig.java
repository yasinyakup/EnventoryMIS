package com.kalyon.mis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.kalyon.mis.converter.StringToDepartmentConverter;
import com.kalyon.mis.converter.StringToPositionConverter;
import com.kalyon.mis.repository.PositionRepository;


@Configuration
@ComponentScan(basePackages = {"com.kalyon.mis.controller", "com.kalyon.mis.repository", "com.kalyon.mis.entity","com.kalyon.mis.converter"})
public class AppConfig extends WebMvcConfigurationSupport {
	
	@Autowired
	StringToPositionConverter stringToPositionConverter;
	
	@Autowired
	StringToDepartmentConverter stringTodepartmentConverter;
	

//@Override
//protected void addFormatters(FormatterRegistry registry) {
//
//	registry.addConverter(new StringToPositionConverter());
//	System.out.println("register initialized");
//}
	
	
//	@Override
//		public void addFormatters(FormatterRegistry registry) {
//		//converter classları register etmek ve spring applicationcontext ile çalıştırmak için, bu projede etkili değildir
//				registry.addConverter(stringToPositionConverter);
//				registry.addConverter(stringTodepartmentConverter);
//				System.out.println("register initialized");
//				
//		}


private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
        "classpath:/META-INF/resources/", "classpath:/resources/",
        "classpath:/static/", "classpath:/public/" };

@Autowired
PositionRepository positionRepository;


@Override
public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/**")
        .addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS);

}

@Bean
public ViewResolver jspViewResolver() {
	
	InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	viewResolver.setPrefix("/WEB-INF/jsp/");
	viewResolver.setSuffix(".jsp");
	viewResolver.setViewClass(JstlView.class);
	
	return viewResolver;
}

}
