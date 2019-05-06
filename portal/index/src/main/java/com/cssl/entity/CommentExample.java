package com.cssl.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    @Override
    public String toString() {
        return "CommentExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    public CommentExample() {
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

        public Criteria andComIdIsNull() {
            addCriterion("com_id is null");
            return (Criteria) this;
        }

        public Criteria andComIdIsNotNull() {
            addCriterion("com_id is not null");
            return (Criteria) this;
        }

        public Criteria andComIdEqualTo(Integer value) {
            addCriterion("com_id =", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdNotEqualTo(Integer value) {
            addCriterion("com_id <>", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdGreaterThan(Integer value) {
            addCriterion("com_id >", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("com_id >=", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdLessThan(Integer value) {
            addCriterion("com_id <", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdLessThanOrEqualTo(Integer value) {
            addCriterion("com_id <=", value, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdIn(List<Integer> values) {
            addCriterion("com_id in", values, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdNotIn(List<Integer> values) {
            addCriterion("com_id not in", values, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdBetween(Integer value1, Integer value2) {
            addCriterion("com_id between", value1, value2, "comId");
            return (Criteria) this;
        }

        public Criteria andComIdNotBetween(Integer value1, Integer value2) {
            addCriterion("com_id not between", value1, value2, "comId");
            return (Criteria) this;
        }

        public Criteria andComContentIsNull() {
            addCriterion("com_content is null");
            return (Criteria) this;
        }

        public Criteria andComContentIsNotNull() {
            addCriterion("com_content is not null");
            return (Criteria) this;
        }

        public Criteria andComContentEqualTo(String value) {
            addCriterion("com_content =", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentNotEqualTo(String value) {
            addCriterion("com_content <>", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentGreaterThan(String value) {
            addCriterion("com_content >", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentGreaterThanOrEqualTo(String value) {
            addCriterion("com_content >=", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentLessThan(String value) {
            addCriterion("com_content <", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentLessThanOrEqualTo(String value) {
            addCriterion("com_content <=", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentLike(String value) {
            addCriterion("com_content like", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentNotLike(String value) {
            addCriterion("com_content not like", value, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentIn(List<String> values) {
            addCriterion("com_content in", values, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentNotIn(List<String> values) {
            addCriterion("com_content not in", values, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentBetween(String value1, String value2) {
            addCriterion("com_content between", value1, value2, "comContent");
            return (Criteria) this;
        }

        public Criteria andComContentNotBetween(String value1, String value2) {
            addCriterion("com_content not between", value1, value2, "comContent");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeIsNull() {
            addCriterion("com_create_time is null");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeIsNotNull() {
            addCriterion("com_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeEqualTo(Date value) {
            addCriterion("com_create_time =", value, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeNotEqualTo(Date value) {
            addCriterion("com_create_time <>", value, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeGreaterThan(Date value) {
            addCriterion("com_create_time >", value, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("com_create_time >=", value, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeLessThan(Date value) {
            addCriterion("com_create_time <", value, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("com_create_time <=", value, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeIn(List<Date> values) {
            addCriterion("com_create_time in", values, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeNotIn(List<Date> values) {
            addCriterion("com_create_time not in", values, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeBetween(Date value1, Date value2) {
            addCriterion("com_create_time between", value1, value2, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("com_create_time not between", value1, value2, "comCreateTime");
            return (Criteria) this;
        }

        public Criteria andComNickNameIsNull() {
            addCriterion("com_nick_name is null");
            return (Criteria) this;
        }

        public Criteria andComNickNameIsNotNull() {
            addCriterion("com_nick_name is not null");
            return (Criteria) this;
        }

        public Criteria andComNickNameEqualTo(String value) {
            addCriterion("com_nick_name =", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameNotEqualTo(String value) {
            addCriterion("com_nick_name <>", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameGreaterThan(String value) {
            addCriterion("com_nick_name >", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameGreaterThanOrEqualTo(String value) {
            addCriterion("com_nick_name >=", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameLessThan(String value) {
            addCriterion("com_nick_name <", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameLessThanOrEqualTo(String value) {
            addCriterion("com_nick_name <=", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameLike(String value) {
            addCriterion("com_nick_name like", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameNotLike(String value) {
            addCriterion("com_nick_name not like", value, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameIn(List<String> values) {
            addCriterion("com_nick_name in", values, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameNotIn(List<String> values) {
            addCriterion("com_nick_name not in", values, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameBetween(String value1, String value2) {
            addCriterion("com_nick_name between", value1, value2, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComNickNameNotBetween(String value1, String value2) {
            addCriterion("com_nick_name not between", value1, value2, "comNickName");
            return (Criteria) this;
        }

        public Criteria andComReplyIsNull() {
            addCriterion("com_reply is null");
            return (Criteria) this;
        }

        public Criteria andComReplyIsNotNull() {
            addCriterion("com_reply is not null");
            return (Criteria) this;
        }

        public Criteria andComReplyEqualTo(String value) {
            addCriterion("com_reply =", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyNotEqualTo(String value) {
            addCriterion("com_reply <>", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyGreaterThan(String value) {
            addCriterion("com_reply >", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyGreaterThanOrEqualTo(String value) {
            addCriterion("com_reply >=", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyLessThan(String value) {
            addCriterion("com_reply <", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyLessThanOrEqualTo(String value) {
            addCriterion("com_reply <=", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyLike(String value) {
            addCriterion("com_reply like", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyNotLike(String value) {
            addCriterion("com_reply not like", value, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyIn(List<String> values) {
            addCriterion("com_reply in", values, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyNotIn(List<String> values) {
            addCriterion("com_reply not in", values, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyBetween(String value1, String value2) {
            addCriterion("com_reply between", value1, value2, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyNotBetween(String value1, String value2) {
            addCriterion("com_reply not between", value1, value2, "comReply");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeIsNull() {
            addCriterion("com_reply_time is null");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeIsNotNull() {
            addCriterion("com_reply_time is not null");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeEqualTo(Date value) {
            addCriterion("com_reply_time =", value, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeNotEqualTo(Date value) {
            addCriterion("com_reply_time <>", value, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeGreaterThan(Date value) {
            addCriterion("com_reply_time >", value, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("com_reply_time >=", value, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeLessThan(Date value) {
            addCriterion("com_reply_time <", value, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeLessThanOrEqualTo(Date value) {
            addCriterion("com_reply_time <=", value, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeIn(List<Date> values) {
            addCriterion("com_reply_time in", values, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeNotIn(List<Date> values) {
            addCriterion("com_reply_time not in", values, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeBetween(Date value1, Date value2) {
            addCriterion("com_reply_time between", value1, value2, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComReplyTimeNotBetween(Date value1, Date value2) {
            addCriterion("com_reply_time not between", value1, value2, "comReplyTime");
            return (Criteria) this;
        }

        public Criteria andComPlaystarIsNull() {
            addCriterion("com_playstar is null");
            return (Criteria) this;
        }

        public Criteria andComPlaystarIsNotNull() {
            addCriterion("com_playstar is not null");
            return (Criteria) this;
        }

        public Criteria andComPlaystarEqualTo(Double value) {
            addCriterion("com_playstar =", value, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarNotEqualTo(Double value) {
            addCriterion("com_playstar <>", value, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarGreaterThan(Double value) {
            addCriterion("com_playstar >", value, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarGreaterThanOrEqualTo(Double value) {
            addCriterion("com_playstar >=", value, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarLessThan(Double value) {
            addCriterion("com_playstar <", value, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarLessThanOrEqualTo(Double value) {
            addCriterion("com_playstar <=", value, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarIn(List<Double> values) {
            addCriterion("com_playstar in", values, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarNotIn(List<Double> values) {
            addCriterion("com_playstar not in", values, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarBetween(Double value1, Double value2) {
            addCriterion("com_playstar between", value1, value2, "comPlaystar");
            return (Criteria) this;
        }

        public Criteria andComPlaystarNotBetween(Double value1, Double value2) {
            addCriterion("com_playstar not between", value1, value2, "comPlaystar");
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