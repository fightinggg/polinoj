package com.oj.startpolinoj.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel
public class LoginVO {
    @ApiModelProperty(value = "用户名", example = "fightinggg")
    String username;
    @ApiModelProperty(value = "加盐密码",
            example = "ba41f42146e6f966875028aa460e470a5a7df798a6d5cd9c2f23b74626a7ea48")
    String password;
}
