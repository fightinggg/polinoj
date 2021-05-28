package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.*;

import java.util.List;

public interface SubmitDAOService {
    SubmitDTO createSubmit(SubmitDTO submitDTO);

    PageResult<SubmitDTO> pageSubmit(SubmitPageDTO submitPageDTO);

    SubmitDTO updateSubmit(SubmitDTO newStatus);

    SubmitDTO getSubmitBySubmitId(String submitId);

    SubmitDTO getSubmitDTO(SubmitGetDTO submitGetDTO);

    List<SubmitDTO> getContextRankList(ContextRankGetDTO getDTO);
}
