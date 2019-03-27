package com.xxpt.web.controller;

import com.xxpt.bean.Student;
import com.xxpt.service.impl.StudentServiceImpl;
import org.springframework.stereotype.Controller;
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
            return e.getMessage();
        }
        return "student";
    }
}
