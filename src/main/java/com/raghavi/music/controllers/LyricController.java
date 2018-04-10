package com.raghavi.music.controllers;

import com.raghavi.music.datamodels.Lyric;
import com.raghavi.music.repositories.LyricRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import static org.springframework.http.ResponseEntity.notFound;
import static org.springframework.http.ResponseEntity.ok;

/**
 * Created by rjanaswa on 4/4/2018.
 */
@RestController
@RequestMapping("/lyric")
public class LyricController {

    @Autowired
    private LyricRepository lyricRepository;

    @GetMapping
    public Flux<Lyric> index() {
        return lyricRepository.findAll();
    }

    @GetMapping("/v1/{lyricTitle}")
    public Mono<ResponseEntity<String>> get(@PathVariable String lyricTitle) {

        return lyricRepository
                    .findById(lyricTitle)
                    .map((lyric) -> ok(  lyric.toString()))
                    .defaultIfEmpty(notFound().build());
    }

}
