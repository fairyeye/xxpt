package com.xxpt.web.controller;

import com.xxpt.bean.College;
import com.xxpt.service.ICollegeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CollegeController {
    @Resource
    private ICollegeService collegeService;

    @RequestMapping("/addonecollege")
    public String addOneCollege(College college, HttpSession session) {
        try {
            collegeService.saveCollege(college);
            List<College> allCollege = collegeService.findAllCollege();
            session.setAttribute("allCollege",allCollege);
            return "addsuccess";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }

    }

    @RequestMapping("/deleteonecollege/{cId}")
    public String deleteOneCollege(@PathVariable long cId, HttpSession session){
        try {
            collegeService.deleteCollege(cId);
            List<College> allCollege = collegeService.findAllCollege();
            session.setAttribute("allCollege",allCollege);
            return "redirect:/deletesuccess";
        } catch (Exception e) {
            String msg = e.getMessage();
            session.setAttribute("msg",msg);
            return "exception";
        }
    }
}
