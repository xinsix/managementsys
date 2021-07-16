package cn.whyx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class ManagementsysApplication {

    public static void main(String[] args) {
        SpringApplication.run(ManagementsysApplication.class, args);
    }
    @Bean
    public InternalResourceViewResolver setupViewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
    @Bean
      public WebMvcConfigurer webMvcConfigurer(){
         return new WebMvcConfigurer() {
             @Override
             public void addResourceHandlers(ResourceHandlerRegistry registry) {
                 registry.addResourceHandler("/statics/**").addResourceLocations("file:D:/Desktop/Vue项目/sys/ManagementSys/src/main/resources/statics/");
             }
         };
     }
}
