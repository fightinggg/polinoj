package com.oj.startpolinoj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@MapperScan(basePackages = "com.oj.dalpolinoj.mapper")
@SpringBootApplication(scanBasePackages = "com.oj")
public class StartPolinojApplication {

	public static void main(String[] args) {
		SpringApplication.run(StartPolinojApplication.class, args);
	}

}
