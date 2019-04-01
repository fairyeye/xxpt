package com.xxpt.service.impl;

import com.xxpt.bean.Teacher;
import com.xxpt.bean.TeacherExample;
import com.xxpt.dao.TeacherMapper;
import com.xxpt.service.ITeacherService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TeacherServiceImpl implements ITeacherService {
    @Resource
    private TeacherMapper teacherMapper;

    public void deleteTeacher(String tId) throws Exception {

    }

    public void batchDeleteTeacher(List<String> tIds) throws Exception {

    }

    public Teacher findTeacher(String Tid) throws Exception {
        return null;
    }

    public List<Teacher> findAllTeacher() throws Exception {
        TeacherExample example = new TeacherExample();
        List<Teacher> teachers = teacherMapper.selectByExample(example);
        if (teachers == null){
            throw new Exception("没有教师！");
        }
        return teachers;
    }

    public List<Teacher> findByKeyword(String keyword) throws Exception {
        return null;
    }

    public void save(Teacher teacher) throws Exception {

    }

    public void update(Teacher teacher) throws Exception {

    }
}
