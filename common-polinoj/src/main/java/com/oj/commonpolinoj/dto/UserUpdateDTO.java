package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class UserUpdateDTO {

    private Long id;

    private String username;

    private String password;

    private String email;

    private String telephone;
}
