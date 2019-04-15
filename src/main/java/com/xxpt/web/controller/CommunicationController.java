package com.xxpt.web.controller;

import com.xxpt.bean.Answer;
import com.xxpt.bean.Question;
import com.xxpt.bean.User;
import com.xxpt.service.IAnswerService;
import com.xxpt.service.IQuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommunicationController {
    @Resource
    private IQuestionService questionService;
    @Resource
    private IAnswerService answerService;

    @RequestMapping("/findallquestion")
    public String findList(HttpSession session){
        List<Question> list = questionService.findList();
        session.setAttribute("questions",list);
        return "communication";
    }

    @RequestMapping("/addonequestion")
    public String addQuestion(Question question,HttpSession session, HttpServletRequest request){
        User user = (User)session.getAttribute("user");
        question.setqAuthor(user.getuId());
        try {
            questionService.save(question);
            List<Question> list = questionService.findList();
            session.setAttribute("questions",list);
        } catch (Exception e) {
            String msg = e.getMessage();
            request.setAttribute("msg",msg);
            return "exception";
        }
        return "forward:/findallquestion";
    }

    @RequestMapping("/findanswerbyquestion/{qId}")
    public String findAnswerByQuestion(@PathVariable int qId,HttpServletRequest request,HttpSession session){
        try {
            Question question = questionService.getOne(qId);
            session.setAttribute("question",question);
            List<Answer> answers = answerService.findByKey(qId);
            session.setAttribute("answers",answers);
            return "redirect:/answer";
        } catch (Exception e) {
            String msg = e.getMessage();
            request.setAttribute("msg",msg);
            return "exception";
        }
    }

    @RequestMapping("/findquestions")
    public String findQuestions(HttpServletRequest request,HttpSession session){
        String keyword = request.getParameter("keyword");
        try {
            List<Question> listByKeyword = questionService.getListByKeyword(keyword);
            session.setAttribute("questions",listByKeyword);
        } catch (Exception e) {
            String msg = e.getMessage();
            request.setAttribute("msg",msg);
            return "exception";
        }
        return "communication";
    }
}
