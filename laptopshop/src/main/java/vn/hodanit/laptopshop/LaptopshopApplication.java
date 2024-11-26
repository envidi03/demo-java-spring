package vn.hodanit.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

// @SpringBootApplication
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class LaptopshopApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext demo = SpringApplication.run(LaptopshopApplication.class, args);
		for (String string : demo.getBeanDefinitionNames()) {
			System.out.println(string);
		}
	}

}
