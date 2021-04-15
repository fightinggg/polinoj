package com.oj.dalpolinoj.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;
import com.oj.dalpolinoj.converter.UserConverter;
import com.oj.dalpolinoj.domin.User;
import com.oj.dalpolinoj.mapper.UserMapper;
import com.oj.dalpolinoj.service.UserDAOService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserDAOServiceImpl implements UserDAOService {

    @Autowired
    UserMapper userMapper;

    @Override
    public UserDTO createUser(UserCreateDTO userCreateDTO) {
        User user = UserConverter.toUserDO(userCreateDTO);
        int i = userMapper.insert(user);
        if (i == 0) {
            throw OJException.buildOJException(OJErrorCode.CREATE_USER_FAILED);
        }
        return UserConverter.toUserDTO(user);
    }

    @Override
    public UserDTO updateUser(UserUpdateDTO userUpdateDTO) {
        User user = UserConverter.toUserDO(userUpdateDTO);
        userMapper.updateById(user);
        return UserConverter.toUserDTO(user);
    }

    @Override
    public UserDTO getUser(UserGetDTO userGetDTO) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(userGetDTO.getId() != null, "id", userGetDTO.getId());
        queryWrapper.eq(userGetDTO.getUsername() != null, "username", userGetDTO.getUsername());
        User user = userMapper.selectOne(queryWrapper);
        return UserConverter.toUserDTO(user);
    }
}
