package com.iro.iromanager;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.iro")
@MapperScan("com.iro.dao")
public class IromanagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(IromanagerApplication.class, args);
    }

}
