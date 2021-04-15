package com.oj.dalpolinoj.service;

import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;

public interface UserDAOService {
    UserDTO createUser(UserCreateDTO userCreateDTO);

    UserDTO updateUser(UserUpdateDTO userUpdateDTO);

    UserDTO getUser(UserGetDTO userGetDTO);
}
