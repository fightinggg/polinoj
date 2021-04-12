package com.oj.commonpolinoj.vo;

import com.oj.commonpolinoj.dto.Sample;
import lombok.Data;

import java.util.List;

@Data
public class ProblemVO {
    String title;
    String description;
    String input;
    String output;
    List<Sample> sampleList;
    String source;
    String author;
    Long time;
    Long memory;
}
