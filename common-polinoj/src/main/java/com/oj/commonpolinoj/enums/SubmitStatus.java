package com.oj.commonpolinoj.enums;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Getter
@AllArgsConstructor
public enum SubmitStatus {

    PENDING("PENDING", 0),
    AC("AC", 2),
    WA("WA", 3),
    TLE("TLE", 4),
    MLE("MLE", 5),
    CE("CE", 6),
    ;


    String txt;
    Integer code;

    static final Map<String, SubmitStatus> map;

    static {
        map = new HashMap<>();
        map.put("Accepted", AC);
        map.put("Wrong Answer", WA);
        map.put("[Compilation Error]()", CE);
    }

    public static SubmitStatus converter(String s) {
        SubmitStatus submitStatus = map.get(s);
        if (submitStatus == null) {
            return PENDING;
        }
        return submitStatus;
    }

    public static String getById(Integer status) {
        for (SubmitStatus submitStatus : SubmitStatus.values()) {
            if (submitStatus.getCode().equals(status)) {
                return submitStatus.getTxt();
            }
        }
        return PENDING.getTxt();
    }
}
