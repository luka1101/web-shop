package com.example.demo.config;

import liquibase.integration.spring.SpringLiquibase;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class LiquibaseConfig {

    @Bean
    public SpringLiquibase liquibase(final DataSource dataSource){
        final SpringLiquibase liquibase = new SpringLiquibase();
        liquibase.setChangeLog("classpath:/db/changelog/changelog.yml");
        liquibase.setDataSource(dataSource);
        return liquibase;
    }
}
