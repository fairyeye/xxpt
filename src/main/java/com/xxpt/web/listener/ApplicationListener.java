package com.xxpt.web.listener;

import com.xxpt.bean.Notice;
import com.xxpt.service.INoticeService;
import com.xxpt.service.impl.NoticeServiceImpl;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class ApplicationListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent servlet) {
        ServletContext servletContext = servlet.getServletContext();
        INoticeService noticeService = new NoticeServiceImpl();
        try {
            List<Notice> allNotice = noticeService.findAllNotice();
            servletContext.setAttribute("notices",allNotice);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
    }
}
