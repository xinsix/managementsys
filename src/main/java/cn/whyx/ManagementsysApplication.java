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
    @Bean
    public InternalResourceViewResolver setupViewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
    @Bean
    public WebMvcConfigurer webMvcConfigurer(){
        String dir = System.getProperty("user.dir");
        //System.out.println("项目当前路径："+dir);
        //构建路径
        File file=new File(dir+File.separatorChar+"src/main/resources/statics/");
        if(!file.exists()){
            file.mkdir();
        }
        String resourceLocation=file.getAbsolutePath()+File.separatorChar;
        return new WebMvcConfigurer() {
            @Override
            public void addResourceHandlers(ResourceHandlerRegistry registry) {
                registry.addResourceHandler("/statics/**").addResourceLocations("file:"+resourceLocation);
            }
        };
    }

}
