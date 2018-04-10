package com.raghavi.music.datamodels;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.data.cassandra.core.mapping.Column;
import org.springframework.data.cassandra.core.mapping.PrimaryKey;
import org.springframework.data.cassandra.core.mapping.Table;

/**
 * Created by rjanaswa on 4/4/2018.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table("lyrics")
public class Lyric {
    @PrimaryKey("lyric_title")
    private String lyricTiktle;

    @Column("lyric_text")
    private String lyricText;

}
