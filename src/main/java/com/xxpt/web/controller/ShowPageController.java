package com.xxpt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ShowPageController {
	
	@RequestMapping("/{pageName}")
	public String showPage1(@PathVariable String pageName){
		return pageName;
	}
	
	@RequestMapping("/")
	public String showPage(){
		return "index";
	}
	
}
