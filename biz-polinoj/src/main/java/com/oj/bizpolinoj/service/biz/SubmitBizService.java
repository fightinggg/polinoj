package com.oj.bizpolinoj.service.biz;

import com.oj.bizpolinoj.domain.bo.SubmitBO;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ProblemSubmitDTO;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.commonpolinoj.dto.SubmitPageDTO;

public interface SubmitBizService {
    SubmitDTO getSubmitDTO(SubmitGetDTO submitGetDTO);

    SubmitDTO submitProblem(ProblemSubmitDTO toProblemSubmitDTO);

    PageResult<SubmitBO> getProblemSubmitResult(SubmitPageDTO submitPageDTO);

}
