package com.oj.commonpolinoj;

import lombok.Data;

@Data
public class HttpResult<T> {
    Boolean success;
    String code;
    String msg;
    T data;
}
