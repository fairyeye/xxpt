package com.xxpt.service.impl;

import com.xxpt.bean.Answer;
import com.xxpt.bean.AnswerExample;
import com.xxpt.dao.AnswerMapper;
import com.xxpt.service.IAnswerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class AnswerServiceImpl implements IAnswerService {
    @Resource
    private AnswerMapper answerMapper;
    public List<Answer> findByKey(int qId) throws Exception {
        AnswerExample example = new AnswerExample();
        example.createCriteria().andAQidEqualTo(qId);
        List<Answer> answers = answerMapper.selectByExample(example);
        return answers;
    }

    public Answer getOne(Integer id) {
        return null;
    }

    public Answer getOne(Answer entity) {
        return null;
    }

    public List<Answer> findList() {
        return null;
    }

    public void save(Answer entity) throws Exception {

    }

    public void update(Answer entity) throws Exception {

    }

    public void delete(Long id) {

    }

    public Long delete(Answer entity) {
        return null;
    }

    public void updateById(Answer entity) throws Exception {

    }
}
