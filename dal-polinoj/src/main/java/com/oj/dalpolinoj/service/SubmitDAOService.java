package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.SubmitDTO;
import com.oj.commonpolinoj.dto.SubmitGetDTO;
import com.oj.commonpolinoj.dto.SubmitPageDTO;

public interface SubmitDAOService {
    SubmitDTO createSubmitResultDTO(SubmitDTO submitDTO);

    PageResult<SubmitDTO> pageSubmit(SubmitPageDTO submitPageDTO);

    SubmitDTO updateSubmit(SubmitDTO newStatus);

    SubmitDTO getSubmitBySubmitId(String submitId);

    SubmitDTO getSubmitDTO(SubmitGetDTO submitGetDTO);
}
