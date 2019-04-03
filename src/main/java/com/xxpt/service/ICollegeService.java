package com.xxpt.service;

import com.xxpt.bean.College;

import java.util.List;

public interface ICollegeService {
    /**
     * 查询所有的学院
     * @return
     * @throws Exception
     */
    List<College> findAllCollege() throws Exception;

    /**
     * 添加学院
     * @param college
     * @throws Exception
     */
    void saveCollege(College college) throws Exception;

    /**
     *
     * @param cId
     * @throws Exception
     */
    void deleteCollege(Long cId) throws Exception;

    College findById(Long cId) throws Exception;
}
