package com.oj.bizpolinoj.service.biz;

import com.oj.commonpolinoj.dto.*;

import javax.servlet.http.HttpServletRequest;

public interface UserBizService {
    UserDTO createUser(UserCreateDTO userCreateDTO);

    UserDTO updateUser(UserUpdateDTO userUpdateDTO);

    UserDTO getUser(UserGetDTO userGetDTO);

    UserDTO login(LoginDTO loginDTO, HttpServletRequest request);

    UserDTO getSlat(UserGetDTO userGetDTO);
}
