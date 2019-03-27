package com.xxpt.service;

import com.xxpt.bean.Student;

import java.util.List;

public interface IStudentService {

    /**
     * 查询所有学生
     * @return 返回所有学生信息
     */
    List<Student> findAllStudent() throws Exception;

    /**
     * 通过ID删除学生
     * @param sId
     * @return
     * @throws Exception
     */
    Student findById(String sId) throws Exception;

    /**
     * 通过学院名称查询学生
     * @param sCollege
     * @return
     * @throws Exception
     */
    List<Student> findByCollege(String sCollege) throws Exception;

    /**
     * 通过关键字查找学生
     * @param keywords
     * @return
     * @throws Exception
     */
    List<Student> findByKeywords(String keywords) throws Exception;

    /**
     * 通过ID删除学生
     * @param sId
     * @throws Exception
     */
    void deleteById(String sId) throws Exception;

    /**
     * 通过id批量删除学生
     * @param sIds
     * @throws Exception
     */
    void batchDelete(List<String> sIds) throws Exception;

    /**
     * 添加学生
     * @param student
     * @throws Exception
     */
    void save(Student student) throws Exception;

    /**
     * 更新学生信息
     * @param student
     * @throws Exception
     */
    void update(Student student) throws Exception;

    /**
     * 通过教师id查找学生
     * @param sTid
     * @return
     * @throws Exception
     */
    List<Student> findByTeacher(String sTid) throws Exception;
}
