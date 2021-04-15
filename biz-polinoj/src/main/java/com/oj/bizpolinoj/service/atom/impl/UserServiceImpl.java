package com.oj.bizpolinoj.service.atom.impl;

import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;
import com.oj.dalpolinoj.service.UserDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAOService userDAOService;

    @Override
    public UserDTO createUser(UserCreateDTO userCreateDTO) {
        return userDAOService.createUser(userCreateDTO);
    }

    @Override
    public UserDTO updateUser(UserUpdateDTO userUpdateDTO) {
        return userDAOService.updateUser(userUpdateDTO);
    }

    @Override
    public UserDTO getUser(UserGetDTO userGetDTO) {
        return userDAOService.getUser(userGetDTO);
    }
}
