package com.cssl.entity;

import java.util.ArrayList;
import java.util.List;

public class ColorExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ColorExample() {
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

        public Criteria andPhoneColoridIsNull() {
            addCriterion("phone_colorid is null");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridIsNotNull() {
            addCriterion("phone_colorid is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridEqualTo(Integer value) {
            addCriterion("phone_colorid =", value, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridNotEqualTo(Integer value) {
            addCriterion("phone_colorid <>", value, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridGreaterThan(Integer value) {
            addCriterion("phone_colorid >", value, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone_colorid >=", value, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridLessThan(Integer value) {
            addCriterion("phone_colorid <", value, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridLessThanOrEqualTo(Integer value) {
            addCriterion("phone_colorid <=", value, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridIn(List<Integer> values) {
            addCriterion("phone_colorid in", values, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridNotIn(List<Integer> values) {
            addCriterion("phone_colorid not in", values, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridBetween(Integer value1, Integer value2) {
            addCriterion("phone_colorid between", value1, value2, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColoridNotBetween(Integer value1, Integer value2) {
            addCriterion("phone_colorid not between", value1, value2, "phoneColorid");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameIsNull() {
            addCriterion("phone_colorname is null");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameIsNotNull() {
            addCriterion("phone_colorname is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameEqualTo(String value) {
            addCriterion("phone_colorname =", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameNotEqualTo(String value) {
            addCriterion("phone_colorname <>", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameGreaterThan(String value) {
            addCriterion("phone_colorname >", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameGreaterThanOrEqualTo(String value) {
            addCriterion("phone_colorname >=", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameLessThan(String value) {
            addCriterion("phone_colorname <", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameLessThanOrEqualTo(String value) {
            addCriterion("phone_colorname <=", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameLike(String value) {
            addCriterion("phone_colorname like", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameNotLike(String value) {
            addCriterion("phone_colorname not like", value, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameIn(List<String> values) {
            addCriterion("phone_colorname in", values, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameNotIn(List<String> values) {
            addCriterion("phone_colorname not in", values, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameBetween(String value1, String value2) {
            addCriterion("phone_colorname between", value1, value2, "phoneColorname");
            return (Criteria) this;
        }

        public Criteria andPhoneColornameNotBetween(String value1, String value2) {
            addCriterion("phone_colorname not between", value1, value2, "phoneColorname");
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