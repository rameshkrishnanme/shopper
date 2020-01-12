package com.blacksystems.spring.boot.microservices.shopper;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAutoConfiguration
public class SpringBootShoppingWeb {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootShoppingWeb.class, args);
	}
	
}
