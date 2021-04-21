package com.oj.bizpolinoj.service.biz;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ProblemBizService {
    ProblemDTO getProblem(ProblemGetDTO problemGetDTO);

    PageResult<ProblemDTO> getRemoteProblem(ProblemRemotePageDTO problemRemotePageDTO);

    ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO);

    ProblemDTO pullProblem(ProblemPullDTO problemPullDTO);

    PageResult<ProblemDTO> pageProblem(ProblemPageDTO toProblemPageDTO);
}
