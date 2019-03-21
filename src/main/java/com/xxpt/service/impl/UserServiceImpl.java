package com.xxpt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxpt.bean.User;
import com.xxpt.dao.UserMapper;
import com.xxpt.service.IUserService;
@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserMapper userMapper;

	public void addUser(String username, String password) {
		System.out.println("123");
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

	public void register(User user) throws Exception {
		user.setuLevel("2");
		System.out.println(user);
		userMapper.insert(user);
	}
	
}
