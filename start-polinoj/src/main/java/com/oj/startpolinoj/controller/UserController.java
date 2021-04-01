package com.oj.startpolinoj.controller;

import com.oj.bizpolinoj.domain.param.GetUserSlatDTO;
import com.oj.bizpolinoj.service.biz.UserBizService;
import com.oj.startpolinoj.convert.UserConvert;
import com.oj.startpolinoj.vo.GetUserSalVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/user")
public class UserController {

    @Autowired
    UserBizService userBizService;

    @GetMapping("/getSalt")
    String getSalt(GetUserSalVO getUserSalVO){
        GetUserSlatDTO getUserSlatDTO = UserConvert.convertToGetUserSaltDTO(getUserSalVO);
        return userBizService.getUserSlat(getUserSlatDTO);
    }
}
