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

    /**
     * 在添加回复之后跳转到查询回复的列表
     * @param aQid
     * @param aAnuthor
     * @param answer
     * @param request
     * @return
     */
    @RequestMapping("/addanswerquestion/{aAnuthor}/{aQid}")
    public String addAnswerQuestion(@PathVariable Integer aQid,@PathVariable String aAnuthor,Answer answer,HttpServletRequest request){
        // {aQid}这样传值同样可以封装到answer对象中。
        System.out.println(answer);
        try {
            answerService.save(answer);
            return "forward:../../findanswerbyquestion/"+aQid;
//            return "";
        } catch (Exception e) {
            request.setAttribute("msg",e.getMessage());
            return "exception";
        }
    }

    @RequestMapping("/deleteanswer/{aId}")
    public String deleteAnswerById(@PathVariable Integer aId,HttpServletRequest request){
        try {
            answerService.delete(aId);
            return "redirect:../deletesuccess";
        } catch (Exception e) {
            request.setAttribute("msg",e.getMessage());
            return "exception";
        }
    }

    @RequestMapping("/deletequestion/{qId}")
    public String deleteQuestionById(@PathVariable Integer qId,HttpServletRequest request){
        try {
            questionService.delete(qId);
            return "redirect:../deletesuccess";
        } catch (Exception e) {
            // TODO: 2019/4/15 如果删除失败的话，从异常页面无法点击顶栏。
            request.setAttribute("msg",e.getMessage());
            return "exception";
        }
    }
}
