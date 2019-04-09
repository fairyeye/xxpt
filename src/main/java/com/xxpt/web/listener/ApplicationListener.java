package com.xxpt.web.listener;

import com.xxpt.bean.Notice;
import com.xxpt.service.INoticeService;
import com.xxpt.service.impl.NoticeServiceImpl;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.io.File;
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

        /**
         * 文件夹测试
         */
        /*File file = new File("D:\\workspace\\XXPT3.0\\target\\XXPT3.0\\pdf");
        String [] fileName = file.list();
        for(String name:fileName)
        {
            System.out.println(name);
        }*/

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
    }
}
