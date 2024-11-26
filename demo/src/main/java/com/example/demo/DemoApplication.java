package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

// @SpringBootApplication
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class DemoApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext demo = SpringApplication.run(DemoApplication.class, args);
		for (String string : demo.getBeanDefinitionNames()) {
			System.out.println(string);
		}
	}
}
