package com.oj.startpolinoj.vo;

import lombok.Data;

@Data
public class ContextPageVO {
    String ownerId;

    Long pageIndex;
    Long pageSize;
}
