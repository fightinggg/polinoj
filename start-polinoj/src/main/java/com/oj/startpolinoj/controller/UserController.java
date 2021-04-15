package com.oj.startpolinoj.controller;

import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;
import com.oj.dalpolinoj.service.UserDAOService;
import com.oj.startpolinoj.convert.UserConverter;
import com.oj.startpolinoj.vo.UserCreateVO;
import com.oj.startpolinoj.vo.UserUpdateVO;
import com.oj.startpolinoj.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/user")
public class UserController {
    @Autowired
    UserDAOService userDAOService;

    @PostMapping
    public UserVO updateUser(@RequestBody UserUpdateVO userUpdateVO) {
        UserUpdateDTO userUpdateDTO = UserConverter.toUserUpdateDTO(userUpdateVO);
        UserDTO userDTO = userDAOService.updateUser(userUpdateDTO);
        return UserConverter.toUserVO(userDTO);
    }

    @GetMapping
    public UserVO getUser(HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute("user");
        return UserConverter.toUserVO(userDTO);
    }
}
