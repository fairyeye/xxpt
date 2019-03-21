package com.xxpt.dao;

import com.xxpt.bean.Teacher;
import com.xxpt.bean.TeacherExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeacherMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    long countByExample(TeacherExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int deleteByExample(TeacherExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int deleteByPrimaryKey(String tId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int insert(Teacher record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int insertSelective(Teacher record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    List<Teacher> selectByExample(TeacherExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    Teacher selectByPrimaryKey(String tId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int updateByExampleSelective(@Param("record") Teacher record, @Param("example") TeacherExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int updateByExample(@Param("record") Teacher record, @Param("example") TeacherExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int updateByPrimaryKeySelective(Teacher record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table teacher
     *
     * @mbg.generated Fri Mar 08 21:21:16 CST 2019
     */
    int updateByPrimaryKey(Teacher record);
}