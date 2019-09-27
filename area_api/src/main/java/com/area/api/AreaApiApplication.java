package com.area.api;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

@SpringBootApplication
@MapperScan("com.area.api.dao")
public class AreaApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(AreaApiApplication.class, args);
    }

}
