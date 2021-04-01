package com.oj.bizpolinoj.service.atom.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.bizpolinoj.domain.converter.UserConvert;
import com.oj.bizpolinoj.domain.dto.UserDTO;
import com.oj.bizpolinoj.domain.param.CreateUserDTO;
import com.oj.bizpolinoj.domain.param.GetUserSlatDTO;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.dalpolinoj.domin.User;
import com.oj.dalpolinoj.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public UserDTO createUser(CreateUserDTO createUserDTO) {
        User user = UserConvert.convertToUser(createUserDTO);

        // never delete so don't need change it

        int insert = userMapper.insert(user);

        if (insert == 0) {
            throw OJException.buildOJException(OJErrorCode.CREATE_USER_FAILED);
        }

        return UserConvert.convertToUserDTO(user);
    }


    @Override
    public String getUserSlat(GetUserSlatDTO getUserSlatDTO) {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        if (getUserSlatDTO.getUserId() != null) {
            wrapper.eq("user_id", getUserSlatDTO.getUserId());
        }

        if (getUserSlatDTO.getUserName() != null) {
            wrapper.eq("user_name", getUserSlatDTO.getUserName());
        }

        User user = userMapper.selectOne(wrapper);

        if (user == null) {
            throw OJException.buildOJException(OJErrorCode.NO_SUCH_USER);
        }

        return user.getUserSlat();
    }
}
