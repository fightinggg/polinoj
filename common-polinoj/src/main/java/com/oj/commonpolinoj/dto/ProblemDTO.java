package com.oj.commonpolinoj.dto;


import lombok.Data;

import java.util.List;

@Data
public class ProblemDTO {
    Long problemId;
    String title;
    String description;
    String input;
    String output;
    List<SampleDTO> sampleDTOList;
    String source;
    String sourceId;
    String author;
    Long time;
    Long memory;
    String hint;
}
