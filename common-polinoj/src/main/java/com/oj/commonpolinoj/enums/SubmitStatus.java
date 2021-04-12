package com.oj.commonpolinoj.enums;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

import java.util.Arrays;
import java.util.List;

@Getter
@AllArgsConstructor
public enum SubmitStatus {

    AC("AC"),
    WA("WA"),
    UNKNOWN("?");


    String txt;

    static final List<String> ACList = Arrays.asList("Accepted");
    static final List<String> WAList = Arrays.asList("Wrong Answer");

    public static SubmitStatus converter(String s) {
        if (ACList.contains(s)) {
            return AC;
        } else if (WAList.contains(s)) {
            return WA;
        } else {
            return UNKNOWN;
        }
    }
}
