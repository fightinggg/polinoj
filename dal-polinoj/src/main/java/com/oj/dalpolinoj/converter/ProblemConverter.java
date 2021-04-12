package com.oj.dalpolinoj.converter;
import com.google.common.collect.Lists;

import com.oj.commonpolinoj.dto.ProblemCreateDTO;
import com.oj.commonpolinoj.dto.ProblemDTO;
import com.oj.dalpolinoj.domin.Problem;

import java.util.List;

public class ProblemConverter {
    public static Problem toProblemDO(ProblemCreateDTO problemCreateDTO) {
        Problem problem = new Problem();
//        problem.setId();
        problem.setDescription(problemCreateDTO.getDescription());
        problem.setHint(problemCreateDTO.getHint());
        problem.setInput(problemCreateDTO.getInput());
        problem.setMemory(problemCreateDTO.getMemory());
        problem.setOutput(problemCreateDTO.getOutput());
        problem.setSource(problemCreateDTO.getSource());
        problem.setTime(problemCreateDTO.getTime());
        problem.setTitle(problemCreateDTO.getTitle());
        problem.setAuthor(problemCreateDTO.getAuthor());
        problem.setSourceId(problemCreateDTO.getSourceId());
        return problem;
    }

    public static ProblemDTO toProblemDTO(Problem problem) {
        ProblemDTO problemDTO = new ProblemDTO();
        problemDTO.setProblemId(problem.getId());
        problemDTO.setTitle(problem.getTitle());
        problemDTO.setDescription(problem.getDescription());
        problemDTO.setInput(problem.getInput());
        problemDTO.setOutput(problem.getOutput());
//        problemDTO.setSampleList();
        problemDTO.setSource(problem.getSource());
        problemDTO.setSourceId(problem.getSourceId());
        problemDTO.setAuthor(problem.getAuthor());
        problemDTO.setTime(problem.getTime());
        problemDTO.setMemory(problem.getMemory());
        problemDTO.setHint(problem.getHint());
        return problemDTO;

    }

    public static List<ProblemDTO> toProblemDTOList(List<Problem> problems) {
        List<ProblemDTO> problemDTOlist=Lists.newArrayList();
        for (Problem problem :problems) {
        	problemDTOlist.add(toProblemDTO(problem));
        }
        return problemDTOlist;
    }
}
