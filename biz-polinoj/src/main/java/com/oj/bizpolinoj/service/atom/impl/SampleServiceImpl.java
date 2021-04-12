package com.oj.bizpolinoj.service.atom.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.oj.bizpolinoj.converter.SampleConverter;
import com.oj.bizpolinoj.service.atom.SampleService;
import com.oj.commonpolinoj.dto.SampleCreateDTO;
import com.oj.commonpolinoj.dto.SampleDTO;
import com.oj.commonpolinoj.dto.SampleGetDTO;
import com.oj.dalpolinoj.domin.Sample;
import com.oj.dalpolinoj.mapper.SampleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SampleServiceImpl implements SampleService {

    @Autowired
    SampleMapper sampleMapper;

    @Override
    public SampleDTO createSample(SampleCreateDTO sampleCreateDTO) {
        Sample sample = SampleConverter.toSampleDO(sampleCreateDTO);
        sampleMapper.insert(sample);
        return SampleConverter.toSampleDTO(sample);
    }

    @Override
    public List<SampleDTO> listSampleDTO(SampleGetDTO sampleGetDTO) {
        QueryWrapper<Sample> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(sampleGetDTO.getProblemId() != null,
                "problem_id",
                sampleGetDTO.getProblemId());
        List<Sample> samples = sampleMapper.selectList(queryWrapper);
        return SampleConverter.toSampleDTOList(samples);
    }
}
