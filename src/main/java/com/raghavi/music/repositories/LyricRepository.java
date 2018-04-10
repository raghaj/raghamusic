package com.raghavi.music.repositories;

import com.raghavi.music.datamodels.Lyric;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import reactor.core.publisher.Flux;

/**
 * Created by rjanaswa on 4/4/2018.
 */
public interface LyricRepository extends ReactiveCrudRepository<Lyric, String> {

}
