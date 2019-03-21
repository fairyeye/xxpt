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
		System.out.println("123");
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
			e.printStackTrace();
			session.setAttribute("msg", e.getMessage());
			return "login";
		}
	}
	@RequestMapping("/userRegister")
	public String userRegister(User user,HttpSession session){
		try {
			System.out.println("用户" + user + "尝试注册！！");
			int i = userService.registerValidate(user);
			if(i==0){
				userService.register(user);                                                           
			}else if(i==2){
				session.setAttribute("msg", "请联系您的教师开通账户，谢谢！");
				return "register";
			}else if(i==1){
				session.setAttribute("msg", "请联系您的领导开通账户，谢谢！");
				return "register";
			}
			session.setAttribute("msg", "注册成功！");
			return "login";
		} catch (Exception e) {
			session.setAttribute("msg", "注册失败！");
			return "register";
		}
	}
}

























