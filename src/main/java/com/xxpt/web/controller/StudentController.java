package com.xxpt.web.controller;

import com.xxpt.bean.Student;
import com.xxpt.service.impl.StudentServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentController {

    @Resource
    StudentServiceImpl studentService;

    @RequestMapping("/findallstudent")
    public String findAllStudent(HttpSession session){
        try {
            List<Student> allStudent = studentService.findAllStudent();
            session.setAttribute("students",allStudent);
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
        return "student";
    }

    @RequestMapping("/addonestudent")
    public String addOneStudent(Student student,HttpSession session){
        System.out.println("想要注册的学生："+student);
        try {
            studentService.save(student);
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
        return "addsuccess";
    }

    @RequestMapping("/deletestudent/{sId}")
    public String deleteStudent(@PathVariable("sId") String sid,HttpSession session){
        //避免deletestudent/index的情况，会查询id未index的学生。
        if (sid.equals("index")){
            return "redirect:../index";
        }
        try {
            studentService.deleteById(sid);
            return "deletesuccess";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
    }
}
