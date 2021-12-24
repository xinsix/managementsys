package cn.whyx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.io.File;
@SpringBootApplication
public class ManagementsysApplication {

    public static void main(String[] args) {
        SpringApplication.run(ManagementsysApplication.class, args);
    }

}
