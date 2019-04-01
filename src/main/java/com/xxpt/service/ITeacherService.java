package com.xxpt.service;

import com.xxpt.bean.Teacher;

import java.util.List;

public interface ITeacherService {
    /**
     * 通过id删除单个教师
     * @param tId
     * @throws Exception
     */
    void deleteTeacher(String tId) throws Exception;

    /**
     * 批量删除教师
     * @param tIds
     * @throws Exception
     */
    void batchDeleteTeacher(List<String> tIds) throws Exception;

    /**
     * 查询单个教师
     * @param Tid
     * @return
     * @throws Exception
     */
    Teacher findTeacher(String Tid) throws Exception;

    /**
     * 查询所有教师
     * @return
     * @throws Exception
     */
    List<Teacher> findAllTeacher() throws Exception;

    /**
     * 通过关键字查询教师
     * @param keyword
     * @return
     * @throws Exception
     */
    List<Teacher> findByKeyword(String keyword) throws Exception;

    /**
     * 保存新教师
     * @param teacher
     * @throws Exception
     */
    void save(Teacher teacher) throws Exception;

    /**
     * 更新教师信息
     * @param teacher
     * @throws Exception
     */
    void update(Teacher teacher) throws Exception;
}
