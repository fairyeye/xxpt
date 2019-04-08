package com.xxpt.web.controller;

import com.xxpt.bean.Notice;
import com.xxpt.bean.User;
import com.xxpt.service.INoticeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class NoticeController {
    @Resource
    private INoticeService noticeService;

    @RequestMapping("/noticeinfo/{nId}")
    public String findNotice(@PathVariable int nId, HttpSession session){
        try {
            Notice notice = noticeService.selectById(nId);
            session.setAttribute("notice",notice);
            return "redirect:/noticeinfo";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
    }

    @RequestMapping("/addonenotice")
    public String addOneNotice(Notice notice, HttpSession session){
        User user = (User) session.getAttribute("user");
        if ("0".equals(user.getuId())){
            notice.setnAuthor("管理员");
        }else {
            notice.setnAuthor(user.getuId());
        }
        try {
            noticeService.add(notice);
            ServletContext servletContext = session.getServletContext();
            List<Notice> allNotice = noticeService.findAllNotice();
            servletContext.setAttribute("notices",allNotice);
            return "addsuccess";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }

    }
}
