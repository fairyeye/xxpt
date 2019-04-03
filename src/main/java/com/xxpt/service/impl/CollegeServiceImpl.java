package com.xxpt.service.impl;

import com.xxpt.bean.College;
import com.xxpt.bean.CollegeExample;
import com.xxpt.dao.CollegeMapper;
import com.xxpt.service.ICollegeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CollegeServiceImpl implements ICollegeService {
    @Resource
    private CollegeMapper collegeMapper;

    public List<College> findAllCollege() throws Exception {
        CollegeExample example = new CollegeExample();
        List<College> colleges = collegeMapper.selectByExample(example);
        if (colleges == null){
            throw new Exception("没有学院！");
        }
        return colleges;
    }

    public void saveCollege(College college) throws Exception {
        int i = collegeMapper.insert(college);
        if (i != 1){
            throw new Exception("添加失败！");
        }
    }

    public void deleteCollege(Long cId) throws Exception {
        int i = collegeMapper.deleteByPrimaryKey(cId);
        if (i != 1){
            throw new Exception("删除失败！");
        }
    }

    public College findById(Long cId) throws Exception {
        College college = collegeMapper.selectByPrimaryKey(cId);
        if (college == null){
            throw  new Exception("该学院不存在！");
        }
        return college;
    }
}
