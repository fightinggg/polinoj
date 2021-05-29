package com.oj.commonpolinoj.dto;

import lombok.Data;

@Data
public class ContextPageDTO {
    String ownerId;

    Long pageIndex;
    Long pageSize;
    Long operatorId;
}
