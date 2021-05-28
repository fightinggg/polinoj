package com.oj.bizpolinoj.service.atom.impl;

import com.google.common.collect.Lists;
import com.oj.bizpolinoj.service.atom.ContextService;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.consts.ContextScoreComputeConsts;
import com.oj.commonpolinoj.dto.*;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.ContextDAOService;
import com.oj.dalpolinoj.service.SubmitDAOService;
import org.apache.commons.collections4.ComparatorUtils;
import org.apache.commons.collections4.comparators.ComparatorChain;
import org.apache.commons.lang3.tuple.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.LongSupplier;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

@Service
public class ContextServiceImpl implements ContextService {
    @Autowired
    ContextDAOService contextDAOService;
    @Autowired
    SubmitDAOService submitDAOService;

    @Override
    public ContextDTO createContext(ContextCreateDTO createDTO) {
        return contextDAOService.createContext(createDTO);
    }

    @Override
    public ContextDTO updateContext(ContextUpdateDTO updateDTO) {
        return contextDAOService.updateContext(updateDTO);
    }

    @Override
    public ContextDTO getContext(ContextGetDTO contextGetDTO) {
        return contextDAOService.getContext(contextGetDTO);
    }

    @Override
    public PageResult<ContextDTO> pageContext(ContextPageDTO pageDTO) {
        return contextDAOService.pageContext(pageDTO);
    }

}
