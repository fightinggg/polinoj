package com.oj.bizpolinoj.converter;
import com.google.common.collect.Lists;

import com.oj.commonpolinoj.dto.SampleCreateDTO;
import com.oj.commonpolinoj.dto.SampleDTO;
import com.oj.dalpolinoj.domin.Sample;

import java.util.List;

public class SampleConverter {
    public static Sample toSampleDO(SampleCreateDTO sampleCreateDTO) {
        Sample sample = new Sample();
//        sample.setId();
        sample.setProblemId(sampleCreateDTO.getProblemId());
        sample.setInput(sampleCreateDTO.getInput());
        sample.setOutput(sampleCreateDTO.getOutput());
        return sample;
    }

    public static SampleDTO toSampleDTO(Sample sample) {
        SampleDTO sampleDTO = new SampleDTO();
        sampleDTO.setId(sample.getId());
        sampleDTO.setProblemId(String.valueOf(sample.getProblemId()));
        sampleDTO.setInput(sample.getInput());
        sampleDTO.setOutput(sample.getOutput());
        return sampleDTO;
    }

    public static List<SampleDTO> toSampleDTOList(List<Sample> samples) {
        List<SampleDTO> sampleDTOlist=Lists.newArrayList();
        for (Sample sample :samples) {
        	sampleDTOlist.add(toSampleDTO(sample));
        }
        return sampleDTOlist;
    }
}
