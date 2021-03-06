package com.xxpt.dao;

import com.xxpt.bean.Answer;
import com.xxpt.bean.AnswerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AnswerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    long countByExample(AnswerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int deleteByExample(AnswerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int deleteByPrimaryKey(Integer aId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int insert(Answer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int insertSelective(Answer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    List<Answer> selectByExample(AnswerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    Answer selectByPrimaryKey(Integer aId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int updateByExampleSelective(@Param("record") Answer record, @Param("example") AnswerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int updateByExample(@Param("record") Answer record, @Param("example") AnswerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int updateByPrimaryKeySelective(Answer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table answer
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    int updateByPrimaryKey(Answer record);
}