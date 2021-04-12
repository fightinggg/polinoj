package com.oj.commonpolinoj;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class PageVO<T> {
    List<T> list;
    Integer pageSize;
    Integer pageIndex;
    Integer total;
}
