package com.xxpt.bean;

import java.util.Date;

public class Answer {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column answer.a_id
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    private Integer aId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column answer.a_content
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    private String aContent;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column answer.a_anuthor
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    private String aAnuthor;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column answer.a_qid
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    private Integer aQid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column answer.a_Time
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    private Date aTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column answer.a_id
     *
     * @return the value of answer.a_id
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public Integer getaId() {
        return aId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column answer.a_id
     *
     * @param aId the value for answer.a_id
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public void setaId(Integer aId) {
        this.aId = aId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column answer.a_content
     *
     * @return the value of answer.a_content
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public String getaContent() {
        return aContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column answer.a_content
     *
     * @param aContent the value for answer.a_content
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public void setaContent(String aContent) {
        this.aContent = aContent == null ? null : aContent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column answer.a_anuthor
     *
     * @return the value of answer.a_anuthor
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public String getaAnuthor() {
        return aAnuthor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column answer.a_anuthor
     *
     * @param aAnuthor the value for answer.a_anuthor
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public void setaAnuthor(String aAnuthor) {
        this.aAnuthor = aAnuthor == null ? null : aAnuthor.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column answer.a_qid
     *
     * @return the value of answer.a_qid
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public Integer getaQid() {
        return aQid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column answer.a_qid
     *
     * @param aQid the value for answer.a_qid
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public void setaQid(Integer aQid) {
        this.aQid = aQid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column answer.a_Time
     *
     * @return the value of answer.a_Time
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public Date getaTime() {
        return aTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column answer.a_Time
     *
     * @param aTime the value for answer.a_Time
     *
     * @mbg.generated Thu Apr 11 16:28:48 CST 2019
     */
    public void setaTime(Date aTime) {
        this.aTime = aTime;
    }

    @Override
    public String toString() {
        return "Answer{" +
                "aId=" + aId +
                ", aContent='" + aContent + '\'' +
                ", aAnuthor='" + aAnuthor + '\'' +
                ", aQid=" + aQid +
                ", aTime=" + aTime +
                '}';
    }
}