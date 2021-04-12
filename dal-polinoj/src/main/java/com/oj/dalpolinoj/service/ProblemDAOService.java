package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ProblemDAOService {
    ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO);

    ProblemDTO getProblem(ProblemGetDTO problemGetDTO);

    PageResult<ProblemDTO> pageProblem(ProblemPageDTO problemPageDTO);

    ProblemDTO updateProblem(ProblemUpdateDTO problemUpdateDTO);

    Boolean deleteProblem(ProblemDeleteDTO problemDeleteDTO);


}
