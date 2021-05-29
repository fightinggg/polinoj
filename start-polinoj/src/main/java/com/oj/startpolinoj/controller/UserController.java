package com.oj.startpolinoj.controller;

import com.oj.commonpolinoj.HttpResult;
import com.oj.commonpolinoj.dto.UserCreateDTO;
import com.oj.commonpolinoj.dto.UserDTO;
import com.oj.commonpolinoj.dto.UserGetDTO;
import com.oj.commonpolinoj.dto.UserUpdateDTO;
import com.oj.dalpolinoj.service.UserDAOService;
import com.oj.startpolinoj.convert.UserConverter;
import com.oj.startpolinoj.vo.UserCreateVO;
import com.oj.startpolinoj.vo.UserUpdateVO;
import com.oj.startpolinoj.vo.UserVO;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import static com.oj.commonpolinoj.consts.SessionNameConsts.UserSessionName;

@RestController
@RequestMapping("/api/user")
public class UserController {
    @Autowired
    UserDAOService userDAOService;

    @PostMapping
    @ApiOperation(value = "更新用户信息")
    public HttpResult<UserVO> updateUser(@RequestBody UserUpdateVO userUpdateVO,
                                         HttpServletRequest httpServletRequest) {
        UserUpdateDTO userUpdateDTO = UserConverter.toUserUpdateDTO(userUpdateVO);
        UserDTO userDTO = userDAOService.updateUser(userUpdateDTO);
        UserVO userVO = UserConverter.toUserVO(userDTO);
        httpServletRequest.getSession().setAttribute(UserSessionName, userDTO);
        return HttpResult.success(userVO);
    }

    @GetMapping
    @ApiOperation(value = "获取用户信息")
    public HttpResult<UserVO> getUser(HttpServletRequest httpServletRequest) {
        UserDTO userDTO = (UserDTO) httpServletRequest.getSession().getAttribute(UserSessionName);
        UserVO userVO = UserConverter.toUserVO(userDTO);
        return HttpResult.success(userVO);
    }
}
