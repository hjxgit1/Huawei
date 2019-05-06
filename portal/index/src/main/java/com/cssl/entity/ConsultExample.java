package com.cssl.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ConsultExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ConsultExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

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

        public Criteria andConIdIsNull() {
            addCriterion("con_id is null");
            return (Criteria) this;
        }

        public Criteria andConIdIsNotNull() {
            addCriterion("con_id is not null");
            return (Criteria) this;
        }

        public Criteria andConIdEqualTo(Integer value) {
            addCriterion("con_id =", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotEqualTo(Integer value) {
            addCriterion("con_id <>", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdGreaterThan(Integer value) {
            addCriterion("con_id >", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("con_id >=", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdLessThan(Integer value) {
            addCriterion("con_id <", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdLessThanOrEqualTo(Integer value) {
            addCriterion("con_id <=", value, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdIn(List<Integer> values) {
            addCriterion("con_id in", values, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotIn(List<Integer> values) {
            addCriterion("con_id not in", values, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdBetween(Integer value1, Integer value2) {
            addCriterion("con_id between", value1, value2, "conId");
            return (Criteria) this;
        }

        public Criteria andConIdNotBetween(Integer value1, Integer value2) {
            addCriterion("con_id not between", value1, value2, "conId");
            return (Criteria) this;
        }

        public Criteria andConContentIsNull() {
            addCriterion("con_content is null");
            return (Criteria) this;
        }

        public Criteria andConContentIsNotNull() {
            addCriterion("con_content is not null");
            return (Criteria) this;
        }

        public Criteria andConContentEqualTo(String value) {
            addCriterion("con_content =", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentNotEqualTo(String value) {
            addCriterion("con_content <>", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentGreaterThan(String value) {
            addCriterion("con_content >", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentGreaterThanOrEqualTo(String value) {
            addCriterion("con_content >=", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentLessThan(String value) {
            addCriterion("con_content <", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentLessThanOrEqualTo(String value) {
            addCriterion("con_content <=", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentLike(String value) {
            addCriterion("con_content like", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentNotLike(String value) {
            addCriterion("con_content not like", value, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentIn(List<String> values) {
            addCriterion("con_content in", values, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentNotIn(List<String> values) {
            addCriterion("con_content not in", values, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentBetween(String value1, String value2) {
            addCriterion("con_content between", value1, value2, "conContent");
            return (Criteria) this;
        }

        public Criteria andConContentNotBetween(String value1, String value2) {
            addCriterion("con_content not between", value1, value2, "conContent");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeIsNull() {
            addCriterion("con_create_time is null");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeIsNotNull() {
            addCriterion("con_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeEqualTo(Date value) {
            addCriterion("con_create_time =", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeNotEqualTo(Date value) {
            addCriterion("con_create_time <>", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeGreaterThan(Date value) {
            addCriterion("con_create_time >", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("con_create_time >=", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeLessThan(Date value) {
            addCriterion("con_create_time <", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("con_create_time <=", value, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeIn(List<Date> values) {
            addCriterion("con_create_time in", values, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeNotIn(List<Date> values) {
            addCriterion("con_create_time not in", values, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeBetween(Date value1, Date value2) {
            addCriterion("con_create_time between", value1, value2, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("con_create_time not between", value1, value2, "conCreateTime");
            return (Criteria) this;
        }

        public Criteria andConNickNameIsNull() {
            addCriterion("con_nick_name is null");
            return (Criteria) this;
        }

        public Criteria andConNickNameIsNotNull() {
            addCriterion("con_nick_name is not null");
            return (Criteria) this;
        }

        public Criteria andConNickNameEqualTo(String value) {
            addCriterion("con_nick_name =", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameNotEqualTo(String value) {
            addCriterion("con_nick_name <>", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameGreaterThan(String value) {
            addCriterion("con_nick_name >", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameGreaterThanOrEqualTo(String value) {
            addCriterion("con_nick_name >=", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameLessThan(String value) {
            addCriterion("con_nick_name <", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameLessThanOrEqualTo(String value) {
            addCriterion("con_nick_name <=", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameLike(String value) {
            addCriterion("con_nick_name like", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameNotLike(String value) {
            addCriterion("con_nick_name not like", value, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameIn(List<String> values) {
            addCriterion("con_nick_name in", values, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameNotIn(List<String> values) {
            addCriterion("con_nick_name not in", values, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameBetween(String value1, String value2) {
            addCriterion("con_nick_name between", value1, value2, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConNickNameNotBetween(String value1, String value2) {
            addCriterion("con_nick_name not between", value1, value2, "conNickName");
            return (Criteria) this;
        }

        public Criteria andConReplyIsNull() {
            addCriterion("con_reply is null");
            return (Criteria) this;
        }

        public Criteria andConReplyIsNotNull() {
            addCriterion("con_reply is not null");
            return (Criteria) this;
        }

        public Criteria andConReplyEqualTo(String value) {
            addCriterion("con_reply =", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyNotEqualTo(String value) {
            addCriterion("con_reply <>", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyGreaterThan(String value) {
            addCriterion("con_reply >", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyGreaterThanOrEqualTo(String value) {
            addCriterion("con_reply >=", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyLessThan(String value) {
            addCriterion("con_reply <", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyLessThanOrEqualTo(String value) {
            addCriterion("con_reply <=", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyLike(String value) {
            addCriterion("con_reply like", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyNotLike(String value) {
            addCriterion("con_reply not like", value, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyIn(List<String> values) {
            addCriterion("con_reply in", values, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyNotIn(List<String> values) {
            addCriterion("con_reply not in", values, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyBetween(String value1, String value2) {
            addCriterion("con_reply between", value1, value2, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyNotBetween(String value1, String value2) {
            addCriterion("con_reply not between", value1, value2, "conReply");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeIsNull() {
            addCriterion("con_reply_time is null");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeIsNotNull() {
            addCriterion("con_reply_time is not null");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeEqualTo(Date value) {
            addCriterion("con_reply_time =", value, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeNotEqualTo(Date value) {
            addCriterion("con_reply_time <>", value, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeGreaterThan(Date value) {
            addCriterion("con_reply_time >", value, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("con_reply_time >=", value, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeLessThan(Date value) {
            addCriterion("con_reply_time <", value, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeLessThanOrEqualTo(Date value) {
            addCriterion("con_reply_time <=", value, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeIn(List<Date> values) {
            addCriterion("con_reply_time in", values, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeNotIn(List<Date> values) {
            addCriterion("con_reply_time not in", values, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeBetween(Date value1, Date value2) {
            addCriterion("con_reply_time between", value1, value2, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andConReplyTimeNotBetween(Date value1, Date value2) {
            addCriterion("con_reply_time not between", value1, value2, "conReplyTime");
            return (Criteria) this;
        }

        public Criteria andPhoneIdIsNull() {
            addCriterion("phone_id is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIdIsNotNull() {
            addCriterion("phone_id is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneIdEqualTo(Integer value) {
            addCriterion("phone_id =", value, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdNotEqualTo(Integer value) {
            addCriterion("phone_id <>", value, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdGreaterThan(Integer value) {
            addCriterion("phone_id >", value, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone_id >=", value, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdLessThan(Integer value) {
            addCriterion("phone_id <", value, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdLessThanOrEqualTo(Integer value) {
            addCriterion("phone_id <=", value, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdIn(List<Integer> values) {
            addCriterion("phone_id in", values, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdNotIn(List<Integer> values) {
            addCriterion("phone_id not in", values, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdBetween(Integer value1, Integer value2) {
            addCriterion("phone_id between", value1, value2, "phoneId");
            return (Criteria) this;
        }

        public Criteria andPhoneIdNotBetween(Integer value1, Integer value2) {
            addCriterion("phone_id not between", value1, value2, "phoneId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

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