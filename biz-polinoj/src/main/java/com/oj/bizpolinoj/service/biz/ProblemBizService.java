package com.oj.bizpolinoj.service.biz;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ProblemBizService {
    ProblemDTO getProblem(ProblemGetDTO problemGetDTO);

    ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO);

    Boolean submitProblem(ProblemSubmitDTO toProblemSubmitDTO);

    PageResult<SubmitResultDTO> getProblemSubmitResult(SubmitResultGetDTO submitResultGetDTO);

    ProblemDTO pullProblem(ProblemPullDTO problemPullDTO);

    PageResult<ProblemDTO> pageProblem(ProblemPageDTO toProblemPageDTO);
}
