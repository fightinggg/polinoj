package com.oj.commonpolinoj.dto;


import lombok.Data;

import java.util.List;

@Data
public class ProblemDTO {
    Long id;
    String title;
    String description;
    String input;
    String output;
    List<SampleDTO> sample;
    String source;
    String sourceId;
    String author;
    Long time;
    Long memory;
    String hint;
    Long acCount;
    Long allCount;
}
