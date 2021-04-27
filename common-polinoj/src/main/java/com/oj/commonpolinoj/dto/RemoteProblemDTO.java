package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class RemoteProblemDTO {
    String title;
    String description;
    String input;
    String output;
    //    List<SampleVO> sampleList;
    String source;
    String sourceId;
    String author;
    Long time;
    Long memory;
    Long acCount;
    Long allCount;
    String url;
}
