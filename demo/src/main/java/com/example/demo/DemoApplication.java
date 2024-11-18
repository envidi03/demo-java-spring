package com.example.demo;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext demo = SpringApplication.run(DemoApplication.class, args);
		for (String string : demo.getBeanDefinitionNames()) {
			System.out.println(string);
		}
	}

}
