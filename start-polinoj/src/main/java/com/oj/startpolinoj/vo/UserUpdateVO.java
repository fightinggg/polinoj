package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class UserUpdateVO {

    private Long id;

    private String username;

    private String password;

    private String email;

    private String telephone;
}
