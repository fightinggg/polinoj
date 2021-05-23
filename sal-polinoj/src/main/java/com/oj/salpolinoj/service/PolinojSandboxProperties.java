package com.oj.salpolinoj.service;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Data
@Component
@ConfigurationProperties(prefix = PolinojSandboxProperties.prefix)
public class PolinojSandboxProperties {
    public final static String prefix = "polinoj-sandbox";

    private String url;
}
