package com.xxpt.service;

import com.xxpt.bean.Answer;
import com.xxpt.common.service.BaseService;

import java.util.List;

public interface IAnswerService extends BaseService<Answer> {
    List<Answer> findByKey(int qId) throws Exception;
}
