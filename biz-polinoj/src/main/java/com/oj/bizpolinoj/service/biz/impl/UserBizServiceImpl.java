package com.oj.bizpolinoj.service.biz.impl;

import com.oj.bizpolinoj.domain.dto.UserDTO;
import com.oj.bizpolinoj.domain.param.CreateUserDTO;
import com.oj.bizpolinoj.domain.param.GetUserSlatDTO;
import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.bizpolinoj.service.biz.UserBizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserBizServiceImpl implements UserBizService {
    @Autowired
    UserService userService;

    @Override
    public UserDTO createUser(CreateUserDTO createUserDTO) {
        return userService.createUser(createUserDTO);
    }

    @Override
    public String getUserSlat(GetUserSlatDTO getUserSlatDTO) {
        return userService.getUserSlat(getUserSlatDTO);
    }
}
