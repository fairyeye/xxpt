package com.xxpt.service;

import com.xxpt.bean.User;

public interface IUserService {
	void addUser(String username,String password);
	User findAll();
	User login(String username,String password) throws Exception;
	void register(User user) throws Exception;
}
