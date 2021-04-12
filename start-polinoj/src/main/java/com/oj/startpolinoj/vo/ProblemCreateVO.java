package com.oj.startpolinoj.vo;

import com.oj.commonpolinoj.dto.SampleDTO;
import lombok.Data;

import java.util.List;

@Data
public class ProblemCreateVO {
    String description;
    String input;
    String output;
    List<SampleDTO> sampleDTOList;
    String source;
    String author;
    Long time;
    Long memory;
    List<SampleDTO> testSampleDTOList;
}
