package com.oj.bizpolinoj.service.biz.impl;

import com.google.common.collect.Lists;
import com.oj.bizpolinoj.service.atom.ContextService;
import com.oj.bizpolinoj.service.atom.UserService;
import com.oj.bizpolinoj.service.biz.ContextBizService;
import com.oj.commonpolinoj.OJErrorCode;
import com.oj.commonpolinoj.OJException;
import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.consts.ContextScoreComputeConsts;
import com.oj.commonpolinoj.dto.*;
import com.oj.commonpolinoj.enums.SubmitStatus;
import com.oj.dalpolinoj.service.SubmitDAOService;
import org.apache.commons.collections4.ComparatorUtils;
import org.apache.commons.lang3.tuple.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

@Service
public class ContextBizServiceImpl implements ContextBizService {
    @Autowired
    ContextService contextService;
    @Autowired
    UserService userService;
    @Autowired
    SubmitDAOService submitService;

    @Override
    public ContextDTO createContext(ContextCreateDTO createDTO) {
        return contextService.createContext(createDTO);
    }

    @Override
    public ContextDTO updateContext(ContextUpdateDTO updateDTO) {
        return contextService.updateContext(updateDTO);
    }

    @Override
    public ContextDTO getContext(ContextGetDTO contextGetDTO) {
        final ContextDTO context = contextService.getContext(contextGetDTO);
        if (context.getBeginTime() > System.currentTimeMillis()) {
            throw OJException.buildOJException(OJErrorCode.CONTEXT_NOT_BEGIN);
        }
        return context;
    }

    @Override
    public PageResult<ContextDTO> pageContext(ContextPageDTO pageDTO) {
        if (pageDTO.getPageIndex() == null) {
            pageDTO.setPageIndex(1L);
        }
        if (pageDTO.getPageSize() == null) {
            pageDTO.setPageSize(10L);
        }
        PageResult<ContextDTO> pageResult = contextService.pageContext(pageDTO);
        List<ContextDTO> list = pageResult.getList();
        for (int i = 0; i < list.size(); i++) {
            UserGetDTO userGetDTO = new UserGetDTO();
            userGetDTO.setId(list.get(i).getOwnerId());
            UserDTO user = userService.getUser(userGetDTO);
            list.get(i).setOwnerName(user.getUsername());
        }
        return pageResult;
    }


    private ContextRankDTO getContextRankDTO(List<SubmitDTO> submitDTOS, ContextDTO contextDTO) {
        final Map<Long, List<SubmitDTO>> problemIdToSubmit = submitDTOS.stream()
                .collect(Collectors.groupingBy(SubmitDTO::getProblemId));


        final List<ContextRankDTO.ProblemStateDTO> problemStateDTOS = contextDTO.getProblemId()
                .stream()
                .map(problemId -> {
                    final ContextRankDTO.ProblemStateDTO problemStateDTO = new ContextRankDTO.ProblemStateDTO();
                    problemStateDTO.setProblemId(problemId);

                    List<SubmitDTO> submitDTOList = problemIdToSubmit.getOrDefault(problemId, Lists.newArrayList());
                    if (submitDTOList.isEmpty()) {
                        problemStateDTO.setAccept(false);
                        return problemStateDTO;
                    }
                    // 枚举每一道题目
                    submitDTOList.sort(Comparator.comparing(SubmitDTO::getSubmitTime));
                    final Optional<SubmitDTO> firstAc = submitDTOList.stream()
                            .filter(o -> o.getStatus().equals(SubmitStatus.AC.getCode())).findFirst();
                    boolean accept = firstAc.isPresent();
                    problemStateDTO.setAccept(accept);
                    problemStateDTO.setPunish(submitDTOList.size());
                    if (!accept) {
                        return problemStateDTO;
                    } else {
                        SubmitDTO firstAcDto = firstAc.get();
                        final int count = (int) submitDTOList.stream()
                                .filter(o -> o.getSubmitTime() < firstAcDto.getSubmitTime())
                                .count();
                        problemStateDTO.setPunish(count);
                        long score = ContextScoreComputeConsts.punishScore * count * 60 * 1000 // punishScore
                                + (firstAcDto.getSubmitTime() - contextDTO.getBeginTime()); // acScore
                        problemStateDTO.setScore(score);
                        problemStateDTO.setAcceptTime(firstAcDto.getSubmitTime());
                        problemStateDTO.setFirstBlood(false);
                        return problemStateDTO;
                    }
                })
                .collect(Collectors.toList());


        ContextRankDTO contextRankDTO = new ContextRankDTO();
        contextRankDTO.setProblemStateDTOList(problemStateDTOS);
        final Supplier<Stream<ContextRankDTO.ProblemStateDTO>> acStream =
                () -> problemStateDTOS.stream().filter(ContextRankDTO.ProblemStateDTO::getAccept);

        contextRankDTO.setScore(acStream.get().mapToLong(ContextRankDTO.ProblemStateDTO::getScore).sum());
        contextRankDTO.setAcceptCount(acStream.get().count());
        contextRankDTO.setUserId(submitDTOS.get(0).getUserId());

        UserGetDTO userGetDTO = new UserGetDTO();
        userGetDTO.setId(contextRankDTO.getUserId());
        UserDTO userDTO = userService.getUser(userGetDTO);
        contextRankDTO.setUserName(userDTO.getUsername());
        return contextRankDTO;
    }

    @Override
    public ContextRankListDTO getContextRankList(ContextRankGetDTO getDTO) {
        ContextGetDTO contextGetDTO = new ContextGetDTO();
        contextGetDTO.setId(getDTO.getContextId());
        final ContextDTO context = contextService.getContext(contextGetDTO);


        final List<SubmitDTO> submitDTOS = submitService.getContextRankList(getDTO);
        final List<ContextRankDTO> contextRankDTOS = submitDTOS.stream()
                .collect(Collectors.groupingBy(SubmitDTO::getUserId))
                .values()
                .stream()
                .map(o -> getContextRankDTO(o, context))
                .collect(Collectors.toList());
        final Comparator<ContextRankDTO> c1
                = ComparatorUtils.reversedComparator(Comparator.comparingLong(ContextRankDTO::getAcceptCount));
        final Comparator<ContextRankDTO> c2
                = Comparator.comparingLong(ContextRankDTO::getScore);
        final Comparator<ContextRankDTO> comparator
                = ComparatorUtils.chainedComparator(Lists.newArrayList(c1, c2));
        contextRankDTOS.sort(comparator);
        // rank
        IntStream.range(0, contextRankDTOS.size()).forEach(i -> contextRankDTOS.get(i).setRank(i + 1));
        IntStream.range(1, contextRankDTOS.size())
                .mapToObj(i -> Pair.of(contextRankDTOS.get(i), contextRankDTOS.get(i - 1)))
                .filter(e -> comparator.compare(e.getLeft(), e.getLeft()) == 0)
                .forEachOrdered(e -> e.getRight().setRank(e.getLeft().getRank()));
        // firstBlood
        final Map<Long, Long> problemToFirstBloodTime = contextRankDTOS.stream()
                .map(ContextRankDTO::getProblemStateDTOList)
                .flatMap(List::stream)
                .filter(ContextRankDTO.ProblemStateDTO::getAccept)
                .collect(Collectors.groupingBy(ContextRankDTO.ProblemStateDTO::getProblemId))
                .entrySet()
                .stream()
                .map(s -> {
                    long firstBloodTime = s.getValue().stream()
                            .mapToLong(ContextRankDTO.ProblemStateDTO::getAcceptTime)
                            .max()
                            .orElse(Long.MAX_VALUE);
                    return Pair.of(s.getKey(), firstBloodTime);
                })
                .collect(Collectors.toMap(Pair::getLeft, Pair::getRight));
        contextRankDTOS.forEach(contextRankDTO -> contextRankDTO.getProblemStateDTOList()
                .stream()
                .filter(ContextRankDTO.ProblemStateDTO::getAccept)
                .filter(o -> o.getAcceptTime().equals(problemToFirstBloodTime.get(o.getProblemId())))
                .forEach(o -> o.setFirstBlood(true)));
        ContextRankListDTO contextRankListDTO = new ContextRankListDTO();
        contextRankListDTO.setList(contextRankDTOS);
        contextRankListDTO.setProblemSize((long) context.getProblemId().size());
        return contextRankListDTO;
    }
}
