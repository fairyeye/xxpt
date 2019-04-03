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
        Teacher teacher = teacherMapper.selectByPrimaryKey(tId);
        if (teacher == null) {
            throw new Exception("该教师不存在！");
        }
        int i = teacherMapper.deleteByPrimaryKey(tId);
        if (i != 1){
            throw new Exception("删除失败！");
        }
    }

    public void batchDeleteTeacher(List<String> tIds) throws Exception {

    }

    public Teacher findTeacher(String tId) throws Exception {
        Teacher teacher = teacherMapper.selectByPrimaryKey(tId);
        if (teacher == null) {
            throw new Exception("该教师不存在！");
        }
        return teacher;
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
        Teacher select = teacherMapper.selectByPrimaryKey(teacher.gettId());
        if (select != null){
            throw new Exception("教师已存在!");
        }
        int i = teacherMapper.insert(teacher);
        if (i != 1){
            throw new Exception("添加失败！");
        }
    }

    public void update(Teacher teacher) throws Exception {

    }
}
