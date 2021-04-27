package com.oj.startpolinoj.convert;
import com.google.common.collect.Lists;

import com.oj.commonpolinoj.PageResult;
import com.oj.commonpolinoj.dto.ProblemDTO;
import com.oj.commonpolinoj.dto.RemoteProblemDTO;
import com.oj.startpolinoj.vo.RemoteProblemVO;

import java.util.List;

public class RemoteProblemConverter {
    public static PageResult<RemoteProblemVO> toProblemPageVO(PageResult<RemoteProblemDTO> remoteProblem) {
        PageResult<RemoteProblemVO> pageResult = new PageResult<>();
        pageResult.setList(toRemoteProblemList(remoteProblem.getList()));
        pageResult.setPageSize(remoteProblem.getPageSize());
        pageResult.setPageIndex(remoteProblem.getPageIndex());
        pageResult.setTotal(remoteProblem.getTotal());
        return pageResult;

    }

    private static List<RemoteProblemVO> toRemoteProblemList(List<RemoteProblemDTO> list) {
        List<RemoteProblemVO> remoteProblemVOlist=Lists.newArrayList();
        for (RemoteProblemDTO remoteProblemDTO :list) {
        	remoteProblemVOlist.add(toRemoteProblemVO(remoteProblemDTO));
        }
        return remoteProblemVOlist;
    }

    private static RemoteProblemVO toRemoteProblemVO(RemoteProblemDTO remoteProblemDTO) {
        RemoteProblemVO remoteProblemVO = new RemoteProblemVO();
        remoteProblemVO.setTitle(remoteProblemDTO.getTitle());
        remoteProblemVO.setDescription(remoteProblemDTO.getDescription());
        remoteProblemVO.setInput(remoteProblemDTO.getInput());
        remoteProblemVO.setOutput(remoteProblemDTO.getOutput());
        remoteProblemVO.setSource(remoteProblemDTO.getSource());
        remoteProblemVO.setSourceId(remoteProblemDTO.getSourceId());
        remoteProblemVO.setAuthor(remoteProblemDTO.getAuthor());
        remoteProblemVO.setTime(remoteProblemDTO.getTime());
        remoteProblemVO.setMemory(remoteProblemDTO.getMemory());
        remoteProblemVO.setAcCount(remoteProblemDTO.getAcCount());
        remoteProblemVO.setAllCount(remoteProblemDTO.getAllCount());
        remoteProblemVO.setUrl(remoteProblemDTO.getUrl());
        return remoteProblemVO;
    }
}
