package com.oj.bizpolinoj.domain.converter;

import com.oj.bizpolinoj.domain.dto.UserDTO;
import com.oj.bizpolinoj.domain.param.CreateUserDTO;
import com.oj.dalpolinoj.domin.User;

public class UserConvert {

    public static User convertToUser(CreateUserDTO createUserDTO) {
        User user = new User();
//        user.setUserId(createUserDTO.getUserId());
        user.setUserName(createUserDTO.getUserName());
        user.setUserPasswordSha(createUserDTO.getUserPasswordSha());
        user.setUserSlat(createUserDTO.getUserSlat());
        user.setUserAcCount(createUserDTO.getUserAcCount());
        user.setUserSubmitCount(createUserDTO.getUserSubmitCount());
//        user.setCreateTime(createUserDTO.getCreateTime());
//        user.setCreateUser(createUserDTO.getCreateUser());
//        user.setModifyTime(createUserDTO.getModifyTime());
//        user.setModifyUser(createUserDTO.getModifyUser());
//        user.setValid(createUserDTO.getValid());
        return user;
    }

    public static UserDTO convertToUserDTO(User user) {
        UserDTO userDTO = new UserDTO();
        userDTO.setUserId(user.getUserId());
        userDTO.setUserName(user.getUserName());
        userDTO.setUserAcCount(user.getUserAcCount());
        userDTO.setUserSubmitCount(user.getUserSubmitCount());
        return userDTO;
    }
}
