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
}
