package com.kalyon.mis;

import java.util.ArrayList;
import java.util.List;

import org.aspectj.weaver.ast.And;
import org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.authority.mapping.GrantedAuthoritiesMapper;
import org.springframework.security.core.authority.mapping.SimpleAuthorityMapper;
import org.springframework.security.core.userdetails.UserDetails;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class AppSecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private com.kalyon.mis.auth.UserDetailsService userDetailsService;

	@Bean
	public DaoAuthenticationProvider daoAuthenticationProvider() {
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(this.userDetailsService);
		provider.setPasswordEncoder(new BCryptPasswordEncoder());
		provider.setAuthoritiesMapper(authorityMapper());

		return provider;

	}
	
	@Bean
	public GrantedAuthoritiesMapper authorityMapper() {
		SimpleAuthorityMapper simpleAuthorityMapper = new SimpleAuthorityMapper();
		simpleAuthorityMapper.setConvertToUpperCase(true);
		simpleAuthorityMapper.setDefaultAuthority("USER");
		
		return simpleAuthorityMapper;
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth.authenticationProvider(daoAuthenticationProvider());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().disable().authorizeRequests().antMatchers("/", "/api/v1/employees", "/home","/register", "/css/*", "/js/*","/registerEmp").permitAll().anyRequest()
				.authenticated().and().formLogin()
				.loginPage("/login").defaultSuccessUrl("/home").failureUrl("/login")
				.permitAll()
				.and()
				.logout().invalidateHttpSession(true)
				.clearAuthentication(true)
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				.permitAll()
				.and()
				.exceptionHandling()
				.accessDeniedPage("/login?msg=Yetkiniz Yok!");
	}

//	
//	@Bean
//	@Override
//	protected UserDetailsService userDetailsService() {
//		
//		List<UserDetails> users = new ArrayList<UserDetails>();
//		
//		users.add(org.springframework.security.core.userdetails.User.withDefaultPasswordEncoder().username("admin").password("admin").roles("ADMİN").build());
//		users.add(org.springframework.security.core.userdetails.User.withDefaultPasswordEncoder().username("yasin").password("yasin").roles("USER").build());
//		return new InMemoryUserDetailsManager(users);
//	}
//	

}
