package com.xxpt.service.impl;

import com.xxpt.bean.Answer;
import com.xxpt.bean.AnswerExample;
import com.xxpt.dao.AnswerMapper;
import com.xxpt.service.IAnswerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;
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
        Date date = new Date();
        Timestamp timeStamep = new Timestamp(date.getTime());
        entity.setaTime(timeStamep);
        int i = answerMapper.insert(entity);
        if (i != 1){
            throw new Exception("插入失败！");
        }
    }

    public void update(Answer entity) throws Exception {

    }

    public void delete(Integer id) throws Exception{
        Answer answer = answerMapper.selectByPrimaryKey(id);
        if (answer == null){
            throw new Exception("没有找到该回复！请刷新后重试！");
        }
        int i = answerMapper.deleteByPrimaryKey(id);
        if (i != 1){
            throw new Exception("删除失败");
        }
    }

    public Long delete(Answer entity) {
        return null;
    }

    public void updateById(Answer entity) throws Exception {

    }

    public List<Answer> getListByKeyword(String keywords) throws Exception {
        return null;
    }
}
