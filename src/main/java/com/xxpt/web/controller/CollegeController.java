package com.xxpt.web.controller;

import com.xxpt.service.ICollegeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class CollegeController {
    @Resource
    private ICollegeService collegeService;

    @RequestMapping("/addonecollege")
    public String addOneCollege() {
        return "addsuccess";
    }
}
