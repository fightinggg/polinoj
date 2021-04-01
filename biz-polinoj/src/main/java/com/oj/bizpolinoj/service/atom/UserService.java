package com.oj.bizpolinoj.service.atom;


import com.oj.bizpolinoj.domain.dto.UserDTO;
import com.oj.bizpolinoj.domain.param.CreateUserDTO;
import com.oj.bizpolinoj.domain.param.GetUserSlatDTO;

public interface UserService {
    UserDTO createUser(CreateUserDTO createUserDTO);

    String getUserSlat(GetUserSlatDTO getUserSlatDTO);
}
