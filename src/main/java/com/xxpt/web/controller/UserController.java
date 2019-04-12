package com.xxpt.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.xxpt.bean.College;
import com.xxpt.bean.Student;
import com.xxpt.bean.Teacher;
import com.xxpt.service.ICollegeService;
import com.xxpt.service.IStudentService;
import com.xxpt.service.ITeacherService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxpt.bean.User;
import com.xxpt.service.IUserService;

import java.util.List;

@Controller
public class UserController {

	@Resource
	IUserService userService;
	@Resource
	ITeacherService teacherService;
	@Resource
	ICollegeService collegeService;
	@Resource
	IStudentService studentService;

	@RequestMapping("/userLogin")
	public String userLogin(User user, HttpServletRequest request, HttpSession session) {
		System.out.println("用户" + user + "尝试登录！！");
		User st_user = new User();
		try {
			if ("0".equals(user.getuId())) {
				if ("0".equals(user.getuPassword())) {
					session.setAttribute("user", new User("0", "0", "0"));
					System.out.println("session取出的" + session.getAttribute("user"));
					List<Teacher> allTeacher = teacherService.findAllTeacher();
					session.setAttribute("allTeacher",allTeacher);
					List<College> allCollege = collegeService.findAllCollege();
					session.setAttribute("allCollege",allCollege);
					return "forward:/index";
				} else {
					session.setAttribute("msg", "请输入正确的管理员密码");
					return "login";
				}
			} else {
				st_user = userService.login(user.getuId(), user.getuPassword());
				session.setAttribute("user", st_user);
				List<Teacher> allTeacher = teacherService.findAllTeacher();
				session.setAttribute("allTeacher",allTeacher);
				List<College> allCollege = collegeService.findAllCollege();
				session.setAttribute("allCollege",allCollege);
				return "index";
			}

		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
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

	@RequestMapping("/userinfo")
	public String userInfo(HttpSession session){
		User user = (User)session.getAttribute("user");
		try {
			if ("0".equals(user.getuLevel())){
				return "admininfo";
			} else if ("1".equals(user.getuLevel())){
				Teacher teacher = teacherService.findTeacher(user.getuId());
				session.setAttribute("userinfo",teacher);
				return "info";
			} else if ("2".equals(user.getuLevel())){
				Student student = studentService.findById(user.getuId());
				session.setAttribute("userinfo",student);
				return "info";
			}
			return "info";
			} catch (Exception e) {
				session.setAttribute("msg", e.getMessage());
				return "exception";
			}
	}
}