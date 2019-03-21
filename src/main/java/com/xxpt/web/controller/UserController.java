package com.xxpt.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxpt.bean.User;
import com.xxpt.service.IUserService;

@Controller
public class UserController {

	@Autowired
	IUserService userService;

	@RequestMapping("/add")
	public String addUser(String username, String password) {
		userService.findAll();
		userService.addUser(username, password);
		return "list";
	}

	@RequestMapping("/userLogin")
	public String userLogin(User user, HttpSession session) {
		System.out.println("用户" + user + "尝试登录！！");
		User st_user = new User();
		try {
			if ("0".equals(user.getuId())) {
				if ("0".equals(user.getuPassword())) {
					session.setAttribute("user", new User("0", "0", "0"));
					System.out.println("session取出的" + session.getAttribute("user"));
					return "forward:/index";
				} else {
					session.setAttribute("msg", "请输入正确的管理员密码");
					return "redirect:/login";
				}
			} else {
				st_user = userService.login(user.getuId(), user.getuPassword());
				session.setAttribute("user", st_user);
				return "index";
			}
		} catch (Exception e) {
			session.setAttribute("msg", e.getMessage());
			return "login";
		}
	}
	@RequestMapping("/userRegister")
	public String userRegister(User user,HttpSession session){
		try {
			System.out.println("用户" + user + "尝试注册！！");
			userService.register(user);
			session.setAttribute("msg", "注册成功！");
			return "login";
		} catch (Exception e) {
			session.setAttribute("msg", "注册失败！");
			return "register";
		}
		
	}
}

























