package com.xxpt.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xxpt.bean.Student;
import com.xxpt.bean.User;
import com.xxpt.dao.StudentMapper;
import com.xxpt.dao.UserMapper;
import com.xxpt.service.IUserService;
@Service
public class UserServiceImpl implements IUserService{
	
	@Resource
	UserMapper userMapper;
	@Resource
	StudentMapper studentMapper;

	public void addUser(String username, String password) {
		
	}

	public User findAll() {
		User user = userMapper.selectByPrimaryKey("0");
		System.out.println(user);
		return user;
	}

	public User login(String username, String password) throws Exception {
		User user = userMapper.selectByPrimaryKey(username);
		if(user==null){
			throw new Exception("用户不存在！");
		}else if(!user.getuPassword().trim().equals(password)){
			throw new Exception("密码错误！");
		}
		return user;
	}
	/**
	 * 用户注册
	 */
	public void register(User user) throws Exception {
		user.setuLevel("2");
		System.out.println(user);
		userMapper.insert(user);
	}
	/**
	 * 验证身份
	 * return 0;注册成功
	 * return 2;学生注册失败
	 * return 1;教师注册失败
	 */
	public int registerValidate(User user) throws Exception {
		String sId = user.getuId();
		String level = user.getuLevel();
		if("2".equals(level)){
			Student student = studentMapper.selectByPrimaryKey(sId);
			try {
				if(null==student){
					return 2;
				}else {
					return 0;
				}
			} catch (NullPointerException e) {
				return 2;
			}
		}
		
		if("1".equals(level)){
			Student student = studentMapper.selectByPrimaryKey(sId);
			try {
				if(null==student){
					return 1;
				}else {
					return 0;
				}
			} catch (NullPointerException e) {
				return 1;
			}
		}
		return -1;
		
	}
}



























