package com.xxpt.bean;

import java.util.Date;

public class Question {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column question.q_id
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    private Integer qId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column question.q_name
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    private String qName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column question.q_author
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    private String qAuthor;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column question.q_time
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    private Date qTime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column question.q_answer_num
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    private Integer qAnswerNum;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column question.q_id
     *
     * @return the value of question.q_id
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public Integer getqId() {
        return qId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column question.q_id
     *
     * @param qId the value for question.q_id
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setqId(Integer qId) {
        this.qId = qId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column question.q_name
     *
     * @return the value of question.q_name
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public String getqName() {
        return qName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column question.q_name
     *
     * @param qName the value for question.q_name
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setqName(String qName) {
        this.qName = qName == null ? null : qName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column question.q_author
     *
     * @return the value of question.q_author
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public String getqAuthor() {
        return qAuthor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column question.q_author
     *
     * @param qAuthor the value for question.q_author
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setqAuthor(String qAuthor) {
        this.qAuthor = qAuthor == null ? null : qAuthor.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column question.q_time
     *
     * @return the value of question.q_time
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public Date getqTime() {
        return qTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column question.q_time
     *
     * @param qTime the value for question.q_time
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setqTime(Date qTime) {
        this.qTime = qTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column question.q_answer_num
     *
     * @return the value of question.q_answer_num
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public Integer getqAnswerNum() {
        return qAnswerNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column question.q_answer_num
     *
     * @param qAnswerNum the value for question.q_answer_num
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setqAnswerNum(Integer qAnswerNum) {
        this.qAnswerNum = qAnswerNum;
    }
}