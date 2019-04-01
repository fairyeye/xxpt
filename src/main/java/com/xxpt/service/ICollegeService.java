package com.xxpt.service;

import com.xxpt.bean.College;

import java.util.List;

public interface ICollegeService {
    List<College> findAllCollege() throws Exception;
}
