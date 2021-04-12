package com.oj.bizpolinoj.service.atom;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ProblemService {
    ProblemDTO getProblem(ProblemGetDTO problemGetDTO);

    ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO);

    Boolean submitProblem(ProblemSubmitDTO problemSubmitDTO);

    PageResult<SubmitResultDTO> getProblemSubmitResult(SubmitResultGetDTO submitResultGetDTO);

    PageResult<ProblemDTO> pageProblem(ProblemPageDTO problemPageDTO);
}
