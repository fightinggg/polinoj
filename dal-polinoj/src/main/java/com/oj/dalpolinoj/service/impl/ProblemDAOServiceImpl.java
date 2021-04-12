package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.converter.ProblemConverter;
import com.oj.commonpolinoj.dto.*;
import com.oj.dalpolinoj.domin.Problem;
import com.oj.dalpolinoj.mapper.ProblemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProblemDAOServiceImpl implements ProblemDAOService {

    @Autowired
    ProblemMapper problemMapper;

    @Override
    public ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO) {
        Problem problem = ProblemConverter.toProblemDO(problemCreateDTO);
        problemMapper.insert()
    }

    @Override
    public ProblemDTO getProblem(ProblemGetDTO problemGetDTO) {
        return null;
    }

    @Override
    public ProblemDTO updateProblem(ProblemUpdateDTO problemUpdateDTO) {
        return null;
    }

    @Override
    public Boolean deleteProblem(ProblemDeleteDTO problemDeleteDTO) {
        return null;
    }
}
