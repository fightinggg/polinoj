package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.service.biz.UserBizService;
import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.dto.LoginDTO;
import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.dalpolinoj.service.UserDAOService;
import com.oj.startpolinoj.convert.LoginConverter;
import com.oj.startpolinoj.convert.UserConverter;
import com.oj.startpolinoj.vo.LoginVO;
import com.oj.startpolinoj.vo.UserCreateVO;
import com.oj.startpolinoj.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/api/status")
public class UserStatusController {
    @Autowired
    UserBizService userBizService;

    @PostMapping("/login")
    HttpResult<UserVO> login(@RequestBody LoginVO loginVO, HttpServletRequest request) {
        LoginDTO loginDTO = LoginConverter.toLoginDTO(loginVO);
        UserDTO login = userBizService.login(loginDTO, request);
        UserVO userVO = UserConverter.toUserVO(login);
        return HttpResult.success(userVO);
    }

    @GetMapping("/slat")
    HttpResult<UserVO> getSlat(String username) {
        UserGetDTO userGetDTO = new UserGetDTO();
        userGetDTO.setUsername(username);
        UserDTO userDTO = userBizService.getSlat(userGetDTO);
        UserVO userVO = UserConverter.toUserVO(userDTO);
        return HttpResult.success(userVO);
    }

    @PutMapping("/signin")
    public UserVO createUser(@RequestBody UserCreateVO userCreateVO, HttpServletRequest request) {
        UserCreateDTO userCreateDTO = UserConverter.toUserCreateDTO(userCreateVO);
        UserDTO userDTO = userBizService.createUser(userCreateDTO);
        request.getSession().setAttribute("user", userDTO);
        return UserConverter.toUserVO(userDTO);
    }


    @PostMapping("/logout")
    public UserVO logout(HttpServletRequest httpServletRequest){
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute("user");
        httpServletRequest.getSession().removeAttribute("user");
        return UserConverter.toUserVO(userDTO);
    }
}
