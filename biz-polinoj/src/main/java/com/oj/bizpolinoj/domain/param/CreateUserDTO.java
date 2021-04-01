package com.oj.bizpolinoj.domain.param;

import lombok.Data;

@Data
public class CreateUserDTO {
    private String userName;

    private String userPasswordSha;

    private String userSlat;

    private Integer userAcCount;

    private Integer userSubmitCount;
}
