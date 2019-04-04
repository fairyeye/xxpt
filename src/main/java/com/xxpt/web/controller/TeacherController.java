package com.xxpt.web.controller;

import com.xxpt.bean.Teacher;
import com.xxpt.service.ITeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class TeacherController {
    @Resource
    private ITeacherService teacherService;

    @RequestMapping("/addoneteacher")
    public String addOneTeacher(Teacher teacher, HttpSession session){
        try {
            teacherService.save(teacher);
            List<Teacher> allTeacher = teacherService.findAllTeacher();
            session.setAttribute("allTeacher",allTeacher);
            return "addsuccess";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
    }

    @RequestMapping("/findallteacher")
    public String findAllTeacher(HttpSession session){
        try {
            List<Teacher> allTeacher = teacherService.findAllTeacher();
            session.setAttribute("allTeacher",allTeacher);
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
        return "teacher";
    }

    @RequestMapping("/deleteoneteacher/{tId}")
    public String deleteOneTeacher(@PathVariable String tId, HttpSession session){
        try {
            teacherService.deleteTeacher(tId);
            List<Teacher> allTeacher = teacherService.findAllTeacher();
            session.setAttribute("allTeacher",allTeacher);
            return "redirect:/deletesuccess";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
    }
}
