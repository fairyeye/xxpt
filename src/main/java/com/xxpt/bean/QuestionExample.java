package com.xxpt.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class QuestionExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public QuestionExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andQIdIsNull() {
            addCriterion("q_id is null");
            return (Criteria) this;
        }

        public Criteria andQIdIsNotNull() {
            addCriterion("q_id is not null");
            return (Criteria) this;
        }

        public Criteria andQIdEqualTo(Integer value) {
            addCriterion("q_id =", value, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdNotEqualTo(Integer value) {
            addCriterion("q_id <>", value, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdGreaterThan(Integer value) {
            addCriterion("q_id >", value, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("q_id >=", value, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdLessThan(Integer value) {
            addCriterion("q_id <", value, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdLessThanOrEqualTo(Integer value) {
            addCriterion("q_id <=", value, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdIn(List<Integer> values) {
            addCriterion("q_id in", values, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdNotIn(List<Integer> values) {
            addCriterion("q_id not in", values, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdBetween(Integer value1, Integer value2) {
            addCriterion("q_id between", value1, value2, "qId");
            return (Criteria) this;
        }

        public Criteria andQIdNotBetween(Integer value1, Integer value2) {
            addCriterion("q_id not between", value1, value2, "qId");
            return (Criteria) this;
        }

        public Criteria andQNameIsNull() {
            addCriterion("q_name is null");
            return (Criteria) this;
        }

        public Criteria andQNameIsNotNull() {
            addCriterion("q_name is not null");
            return (Criteria) this;
        }

        public Criteria andQNameEqualTo(String value) {
            addCriterion("q_name =", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameNotEqualTo(String value) {
            addCriterion("q_name <>", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameGreaterThan(String value) {
            addCriterion("q_name >", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameGreaterThanOrEqualTo(String value) {
            addCriterion("q_name >=", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameLessThan(String value) {
            addCriterion("q_name <", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameLessThanOrEqualTo(String value) {
            addCriterion("q_name <=", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameLike(String value) {
            addCriterion("q_name like", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameNotLike(String value) {
            addCriterion("q_name not like", value, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameIn(List<String> values) {
            addCriterion("q_name in", values, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameNotIn(List<String> values) {
            addCriterion("q_name not in", values, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameBetween(String value1, String value2) {
            addCriterion("q_name between", value1, value2, "qName");
            return (Criteria) this;
        }

        public Criteria andQNameNotBetween(String value1, String value2) {
            addCriterion("q_name not between", value1, value2, "qName");
            return (Criteria) this;
        }

        public Criteria andQAuthorIsNull() {
            addCriterion("q_author is null");
            return (Criteria) this;
        }

        public Criteria andQAuthorIsNotNull() {
            addCriterion("q_author is not null");
            return (Criteria) this;
        }

        public Criteria andQAuthorEqualTo(String value) {
            addCriterion("q_author =", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorNotEqualTo(String value) {
            addCriterion("q_author <>", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorGreaterThan(String value) {
            addCriterion("q_author >", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("q_author >=", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorLessThan(String value) {
            addCriterion("q_author <", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorLessThanOrEqualTo(String value) {
            addCriterion("q_author <=", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorLike(String value) {
            addCriterion("q_author like", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorNotLike(String value) {
            addCriterion("q_author not like", value, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorIn(List<String> values) {
            addCriterion("q_author in", values, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorNotIn(List<String> values) {
            addCriterion("q_author not in", values, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorBetween(String value1, String value2) {
            addCriterion("q_author between", value1, value2, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQAuthorNotBetween(String value1, String value2) {
            addCriterion("q_author not between", value1, value2, "qAuthor");
            return (Criteria) this;
        }

        public Criteria andQTimeIsNull() {
            addCriterion("q_time is null");
            return (Criteria) this;
        }

        public Criteria andQTimeIsNotNull() {
            addCriterion("q_time is not null");
            return (Criteria) this;
        }

        public Criteria andQTimeEqualTo(Date value) {
            addCriterion("q_time =", value, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeNotEqualTo(Date value) {
            addCriterion("q_time <>", value, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeGreaterThan(Date value) {
            addCriterion("q_time >", value, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("q_time >=", value, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeLessThan(Date value) {
            addCriterion("q_time <", value, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeLessThanOrEqualTo(Date value) {
            addCriterion("q_time <=", value, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeIn(List<Date> values) {
            addCriterion("q_time in", values, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeNotIn(List<Date> values) {
            addCriterion("q_time not in", values, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeBetween(Date value1, Date value2) {
            addCriterion("q_time between", value1, value2, "qTime");
            return (Criteria) this;
        }

        public Criteria andQTimeNotBetween(Date value1, Date value2) {
            addCriterion("q_time not between", value1, value2, "qTime");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumIsNull() {
            addCriterion("q_answer_num is null");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumIsNotNull() {
            addCriterion("q_answer_num is not null");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumEqualTo(Integer value) {
            addCriterion("q_answer_num =", value, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumNotEqualTo(Integer value) {
            addCriterion("q_answer_num <>", value, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumGreaterThan(Integer value) {
            addCriterion("q_answer_num >", value, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("q_answer_num >=", value, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumLessThan(Integer value) {
            addCriterion("q_answer_num <", value, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumLessThanOrEqualTo(Integer value) {
            addCriterion("q_answer_num <=", value, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumIn(List<Integer> values) {
            addCriterion("q_answer_num in", values, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumNotIn(List<Integer> values) {
            addCriterion("q_answer_num not in", values, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumBetween(Integer value1, Integer value2) {
            addCriterion("q_answer_num between", value1, value2, "qAnswerNum");
            return (Criteria) this;
        }

        public Criteria andQAnswerNumNotBetween(Integer value1, Integer value2) {
            addCriterion("q_answer_num not between", value1, value2, "qAnswerNum");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table question
     *
     * @mbg.generated do_not_delete_during_merge Thu Apr 11 15:06:54 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table question
     *
     * @mbg.generated Thu Apr 11 15:06:54 CST 2019
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}