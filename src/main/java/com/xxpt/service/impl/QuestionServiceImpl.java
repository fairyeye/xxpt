package com.xxpt.service.impl;

import com.xxpt.bean.AnswerExample;
import com.xxpt.bean.Question;
import com.xxpt.bean.QuestionExample;
import com.xxpt.dao.AnswerMapper;
import com.xxpt.dao.QuestionMapper;
import com.xxpt.service.IQuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Service
public class QuestionServiceImpl implements IQuestionService {

    @Resource
    private QuestionMapper questionMapper;
    @Resource
    private AnswerMapper answerMapper;

    public Question getOne(Integer id) throws Exception {
        Question question = questionMapper.selectByPrimaryKey(id);
        if (question == null){
            throw new Exception("没有这个问题！");
        }
        return question;
    }

    public Question getOne(Question entity) {
        return null;
    }

    public List<Question> findList() {
        QuestionExample example = new QuestionExample();
        List<Question> questions = questionMapper.selectByExample(example);
        //1.增强for循环，遍历从集合中取出的question
        for (Question question:questions){
            AnswerExample exam = new AnswerExample();
            //2.通过question的id去answer表查询共有多少条答案
            exam.createCriteria().andAQidEqualTo(question.getqId());
            int count = (int) answerMapper.countByExample(exam);
            //3.如果答案数量和question表内存储值不同更新question表
            Integer num = question.getqAnswerNum();
            /*if (null == num){
                num = 0;
            }*/
            if (num != count){
                question.setqAnswerNum(count);
                questionMapper.updateByPrimaryKeySelective(question);
            }
        }
        return questions;
    }

    public void save(Question entity) throws Exception {
        Date date = new Date();
        Timestamp timeStamep = new Timestamp(date.getTime());
        entity.setqTime(timeStamep);
        entity.setqAnswerNum(0);
        int i = questionMapper.insert(entity);
        if (i != 1){
            throw new Exception("发布失败！");
        }
    }

    public void update(Question entity) throws Exception {
        int i = questionMapper.updateByPrimaryKey(entity);
        if (i != 1){
            throw new Exception("更改失败");
        }
    }

    public void delete(Long id) {

    }

    public Long delete(Question entity) {
        return null;
    }

    public void updateById(Question entity) throws Exception {
            questionMapper.updateByPrimaryKeySelective(entity);
    }

    public List<Question> getListByKeyword(String keywords) throws Exception {
        QuestionExample example = new QuestionExample();
        example.createCriteria().andQNameLike(keywords);
        return questionMapper.selectByExample(example);
    }


}
