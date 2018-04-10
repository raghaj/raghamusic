/**
 * Created by rjanaswa on 4/4/2018.
 */

package com.raghavi.music;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.repository.config.EnableReactiveMongoRepositories;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;

@SpringBootApplication
@EnableReactiveMongoRepositories
@EnableWebFluxSecurity
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class,args);
    }

}