package com.oj.startpolinoj.convert;

import com.oj.bizpolinoj.domain.param.GetUserSlatDTO;
import com.oj.startpolinoj.vo.GetUserSalVO;

public class UserConvert {

    public static GetUserSlatDTO convertToGetUserSaltDTO(GetUserSalVO getUserSalVO) {
        GetUserSlatDTO getUserSlatDTO = new GetUserSlatDTO();
        getUserSlatDTO.setUserId(getUserSalVO.getUserId());
        getUserSlatDTO.setUserName(getUserSalVO.getUserName());
        return getUserSlatDTO;
    }
}
