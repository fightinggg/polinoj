package com.oj.bizpolinoj.converter;

import com.oj.commonpolinoj.dto.*;

public class ProblemConverter {
    public static ProblemCreateDTO toProblemCreateDTO(ProblemDTO problem) {
        ProblemCreateDTO problemCreateDTO = new ProblemCreateDTO();
        problemCreateDTO.setDescription(problem.getDescription());
        problemCreateDTO.setInput(problem.getInput());
        problemCreateDTO.setOutput(problem.getOutput());
        problemCreateDTO.setSample(problem.getSample());
        problemCreateDTO.setSource(problem.getSource());
        problemCreateDTO.setSourceId(problem.getSourceId());
        problemCreateDTO.setAuthor(problem.getAuthor());
        problemCreateDTO.setTime(problem.getTime());
        problemCreateDTO.setMemory(problem.getMemory());
        problemCreateDTO.setTitle(problem.getTitle());
//        problemCreateDTO.setTestSampleDTOList();
        problemCreateDTO.setHint(problem.getHint());
        return problemCreateDTO;


    }
}
