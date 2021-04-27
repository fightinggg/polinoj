package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class RemoteProblemVO {
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
