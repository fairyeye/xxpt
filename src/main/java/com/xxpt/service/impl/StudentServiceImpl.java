package com.xxpt.service.impl;

import com.xxpt.bean.Student;
import com.xxpt.bean.StudentExample;
import com.xxpt.dao.StudentMapper;
import com.xxpt.service.IStudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements IStudentService{

    @Resource
    private StudentMapper studentMapper;

    public List<Student> findAllStudent() throws Exception{
        StudentExample example = new StudentExample();
        studentMapper.selectByExample(example);
        return studentMapper.selectByExample(example);
    }

    public Student findById(String sId) throws Exception {
        return null;
    }

    public List<Student> findByCollege(String sCollege) throws Exception {
        return null;
    }

    public List<Student> findByKeywords(String keywords) throws Exception {
        return null;
    }

    public void deleteById(String sId) throws Exception {

    }

    public void batchDelete(List<String> sIds) throws Exception {

    }

    public void save(Student student) throws Exception {
        if (student.getsId()==null) {
            studentMapper.insert(student);
        }
    }

    public void update(Student student) throws Exception {
        studentMapper.updateByPrimaryKey(student);
    }

    public void saveOrUpdate(Student student) throws Exception {
        if (student.getsId()!=null){
            studentMapper.updateByPrimaryKey(student);
        }else {
            studentMapper.insert(student);
        }
    }

    public List<Student> findByTeacher(String sTid) throws Exception {
        return null;
    }
}
