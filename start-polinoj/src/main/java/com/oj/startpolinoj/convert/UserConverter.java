package com.oj.startpolinoj.convert;

import com.oj.bizpolinoj.domain.param.GetUserSlatDTO;
import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;
import com.oj.startpolinoj.vo.*;

public class UserConverter {

    public static UserCreateDTO toUserCreateDTO(UserCreateVO userCreateVO) {
        UserCreateDTO userCreateDTO = new UserCreateDTO();
        userCreateDTO.setUsername(userCreateVO.getUsername());
        userCreateDTO.setPassword(userCreateVO.getPassword());
        userCreateDTO.setSlat(userCreateVO.getSlat());
        userCreateDTO.setEmail(userCreateVO.getEmail());
        userCreateDTO.setTelephone(userCreateVO.getTelephone());
        return userCreateDTO;

    }

    public static UserVO toUserVO(UserDTO user) {
        UserVO userVO = new UserVO();
        userVO.setId(user.getId());
        userVO.setUsername(user.getUsername());
        userVO.setSlat(user.getSlat());
        userVO.setEmail(user.getEmail());
        userVO.setTelephone(user.getTelephone());
        return userVO;
    }

    public static UserUpdateDTO toUserUpdateDTO(UserUpdateVO userUpdateVO) {
        UserUpdateDTO userUpdateDTO = new UserUpdateDTO();
        userUpdateDTO.setId(userUpdateVO.getId());
        userUpdateDTO.setUsername(userUpdateVO.getUsername());
        userUpdateDTO.setPassword(userUpdateVO.getPassword());
        userUpdateDTO.setEmail(userUpdateVO.getEmail());
        userUpdateDTO.setTelephone(userUpdateVO.getTelephone());
        return userUpdateDTO;
    }

    public static UserGetDTO toUserGetDTO(UserGetVO userGetVO) {
        UserGetDTO userGetDTO = new UserGetDTO();
        userGetDTO.setId(userGetVO.getId());
        userGetDTO.setUsername(String.valueOf(userGetVO.getUsername()));
        return userGetDTO;
    }
}
