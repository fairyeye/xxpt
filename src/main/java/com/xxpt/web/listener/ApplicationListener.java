package com.xxpt.web.listener;

import com.xxpt.bean.Teacher;
import com.xxpt.service.ITeacherService;
import com.xxpt.service.impl.TeacherServiceImpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class ApplicationListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        ServletContext sc = servletContextEvent.getServletContext();
        ITeacherService teacherService = new TeacherServiceImpl();
        try {
            System.out.println(1234567);
            List<Teacher> allTeacher = teacherService.findAllTeacher();
            sc.setAttribute("allTeacher",allTeacher);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
