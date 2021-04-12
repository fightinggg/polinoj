package com.oj.bizpolinoj.domain.dto;

import lombok.Data;

@Data
public class UserDTO {
    private static final long serialVersionUID = 1L;

    private Integer userId;

    private String userName;

    private Integer userAcCount;

    private Integer userSubmitCount;
}
