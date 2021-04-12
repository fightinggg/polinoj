package com.oj.commonpolinoj.dto;

import lombok.Data;

import java.util.List;

@Data
public class ProblemUpdateDTO {
    String problemId;
    String description;
    String input;
    String output;
    List<SampleDTO> sampleDTOList;
    String author;
    Long time;
    Long memory;
    List<SampleDTO> testSampleDTOList;
}
