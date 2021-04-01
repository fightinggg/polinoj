package com.oj.startpolinoj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;



@MapperScan(basePackages = "com.oj.dalpolinoj")
@SpringBootApplication(scanBasePackages = "com.oj")
public class StartPolinojApplication {

	public static void main(String[] args) {
		SpringApplication.run(StartPolinojApplication.class, args);
	}

}
