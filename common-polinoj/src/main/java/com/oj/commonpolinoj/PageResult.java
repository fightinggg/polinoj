package com.oj.commonpolinoj;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
public class PageResult<T> {
    List<T> list;
    Integer pageSize;
    Integer pageIndex;
    Integer total;

    public static <T, R> PageResult<R> converterTo(PageResult<T> from, Function<T, R> converter) {
        PageResult<R> to = new PageResult<>();
        List<T> list = from.getList();
        to.setList(list.stream().map(converter).collect(Collectors.toList()));
        to.setPageSize(from.getPageSize());
        to.setPageIndex(from.getPageIndex());
        to.setTotal(from.getTotal());
        return to;

    }
}
