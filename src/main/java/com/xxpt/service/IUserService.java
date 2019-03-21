package com.xxpt.service;

import com.xxpt.bean.User;

public interface IUserService {
	/**
	 * 测试方法
	 * @param username
	 * @param password
	 */
	void addUser(String username,String password);
	/**
	 * 空
	 * @return
	 */
	User findAll();
	/**
	 * 用户登录
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	User login(String username,String password) throws Exception;
	/**
	 * 用户登录
	 * @param user
	 * @throws Exception
	 */
	void register(User user) throws Exception;
	/**
	 * 用户注册验证
	 * @param user
	 * @throws Exception
	 */
	int registerValidate(User user) throws Exception;
}
