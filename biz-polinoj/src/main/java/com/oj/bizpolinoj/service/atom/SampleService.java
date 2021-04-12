package com.oj.bizpolinoj.service.atom;

import com.oj.commonpolinoj.dto.SampleCreateDTO;
import com.oj.commonpolinoj.dto.SampleDTO;
import com.oj.commonpolinoj.dto.SampleGetDTO;

import java.util.List;

public interface SampleService {

    SampleDTO createSample(SampleCreateDTO sampleCreateDTO);

    List<SampleDTO> listSampleDTO(SampleGetDTO sampleGetDTO);
}
