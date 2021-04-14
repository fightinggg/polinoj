package com.oj.bizpolinoj.service.atom;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

public interface ProblemService {
    ProblemDTO getProblem(ProblemGetDTO problemGetDTO);

    ProblemDTO createProblem(ProblemCreateDTO problemCreateDTO);

    SubmitDTO submitProblem(ProblemSubmitDTO problemSubmitDTO);

    PageResult<SubmitDTO> getProblemSubmitResult(SubmitPageDTO submitPageDTO);

    PageResult<ProblemDTO> pageProblem(ProblemPageDTO problemPageDTO);

    PageResult<ProblemDTO> getRemoteProblem(ProblemRemotePageDTO problemRemotePageDTO);
}
