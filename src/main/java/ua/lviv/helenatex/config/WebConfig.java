package ua.lviv.helenatex.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.io.File;
import java.util.Properties;

@Configuration
@EnableWebMvc
@ComponentScan("ua.lviv.helenatex.*")
@PropertySource("classpath:email.properties")
public class WebConfig extends WebMvcConfigurerAdapter {

    @Autowired
    private Environment env;

    @Bean
    public JavaMailSenderImpl javaMailSender(){
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(env.getProperty("email.host"));
        mailSender.setPort(Integer.parseInt(env.getProperty("email.port")));
        mailSender.setUsername(env.getProperty("email.username"));
        mailSender.setPassword(env.getProperty("email.password"));
        Properties properties = mailSender.getJavaMailProperties();
        properties.put(env.getProperty("email.protocol"), env.getProperty("email.protocol.val"));
        properties.put(env.getProperty("email.auth"), env.getProperty("email.auth.val"));
        properties.put(env.getProperty("email.starttls"), env.getProperty("email.starttls.val"));
        properties.put(env.getProperty("email.mail.debug"), env.getProperty("email.mail.debug.val"));
        return mailSender;
    }


    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/template/");
        viewResolver.setSuffix(".jsp");
        viewResolver.setContentType("text/html;charset=UTF-8");


        return viewResolver;
    }

    @Bean
    public MultipartResolver multipartResolver() {
        return new StandardServletMultipartResolver();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/img/**")
                .addResourceLocations("/static/img/");
        registry.addResourceHandler("/js/**")
                .addResourceLocations("/static/javascript/");
        registry.addResourceHandler("/css/**")
                .addResourceLocations("/static/style/");
        registry.addResourceHandler("/font/**")
                .addResourceLocations("/static/font-awesome/fonts/");
        registry.addResourceHandler("/font-css/**")
                .addResourceLocations("/static/font-awesome/css/");
        registry.addResourceHandler("/categoryImage/**")
                .addResourceLocations("file:" + System.getProperty("user.home") + File.separator + "upload\\");
        registry.addResourceHandler("/productImage/**")
                .addResourceLocations("file:" + System.getProperty("user.home") + File.separator + "upload\\");

    }


}
