package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.bizpolinoj.service.biz.UserBizService;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class UserBizServiceImpl implements UserBizService {
    @Autowired
    UserService userService;

    @Override
    public UserDTO createUser(UserCreateDTO userCreateDTO) {
        return userService.createUser(userCreateDTO);
    }

    @Override
    public UserDTO updateUser(UserUpdateDTO userUpdateDTO) {
        return userService.updateUser(userUpdateDTO);
    }

    @Override
    public UserDTO getUser(UserGetDTO userGetDTO) {
        return userService.getUser(userGetDTO);
    }

    /**
     * password = sha256(user_password|slat)
     */
    @Override
    public UserDTO login(LoginDTO loginDTO, HttpServletRequest request) {
        UserGetDTO userGetDTO = new UserGetDTO();
        userGetDTO.setUsername(loginDTO.getUsername());
        UserDTO user = userService.getUser(userGetDTO);
        if (user.getPassword().equals(loginDTO.getPassword())) {
            request.getSession().setAttribute("user", user);
            return user;
        } else {
            throw OJException.buildOJException(OJErrorCode.LOGIN_FAILED);
        }
    }

    @Override
    public UserDTO getSlat(UserGetDTO userGetDTO) {
        UserDTO user = userService.getUser(userGetDTO);
        UserDTO result = new UserDTO();
        result.setId(user.getId());
        result.setUsername(user.getUsername());
        result.setSlat(user.getSlat());

        return result;
    }
}
