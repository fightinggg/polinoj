package com.oj.startpolinoj.vo;

import com.oj.commonpolinoj.dto.SampleDTO;
import lombok.Data;

import java.util.List;

@Data
public class ProblemVO {
    Long problemId;
    String title;
    String description;
    String input;
    String output;
    List<SampleVO> sampleList;
    String source;
    String sourceId;
    String author;
    Long time;
    Long memory;
}
