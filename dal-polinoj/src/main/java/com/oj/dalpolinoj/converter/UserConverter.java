package com.oj.dalpolinoj.converter;

import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;
import com.oj.dalpolinoj.domin.User;

public class UserConverter {
    public static User toUserDO(UserCreateDTO userCreateDTO) {
        User user = new User();
//        user.setId();
        user.setUsername(userCreateDTO.getUsername());
        user.setPassword(userCreateDTO.getPassword());
        user.setSlat(userCreateDTO.getSlat());
        user.setEmail(userCreateDTO.getEmail());
        user.setTelephone(userCreateDTO.getTelephone());
        return user;
    }

    public static UserDTO toUserDTO(User user) {
        UserDTO userDTO = new UserDTO();
        userDTO.setId(user.getId());
        userDTO.setUsername(user.getUsername());
        userDTO.setPassword(user.getPassword());
        userDTO.setSlat(user.getSlat());
        userDTO.setEmail(user.getEmail());
        userDTO.setTelephone(user.getTelephone());
        return userDTO;
    }

    public static User toUserDO(UserUpdateDTO userUpdateDTO) {
        User user = new User();
        user.setId(userUpdateDTO.getId());
        user.setUsername(userUpdateDTO.getUsername());
        user.setPassword(userUpdateDTO.getPassword());
//        user.setSlat();
        user.setEmail(userUpdateDTO.getEmail());
        user.setTelephone(userUpdateDTO.getTelephone());
        return user;
    }
}
