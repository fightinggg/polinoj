package com.oj.startpolinoj.vo;

import com.oj.commonpolinoj.dto.SampleDTO;
import lombok.Data;

import java.util.List;

@Data
public class ProblemCreateVO {
    String title;
    String description;
    String input;
    String output;
    List<SampleDTO> sample;
//    String source;
    String author;
    String hint;
    Long time;
    Long memory;
    List<SampleDTO> test;
}
