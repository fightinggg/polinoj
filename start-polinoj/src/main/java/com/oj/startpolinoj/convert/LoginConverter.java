package com.oj.startpolinoj.convert;

import com.oj.commonpolinoj.dto.LoginDTO;
import com.oj.startpolinoj.vo.LoginVO;

public class LoginConverter {
    public static LoginDTO toLoginDTO(LoginVO loginVO) {
        LoginDTO loginDTO = new LoginDTO();
        loginDTO.setUsername(loginVO.getUsername());
        loginDTO.setPassword(loginVO.getPassword());
        return loginDTO;
    }
}
