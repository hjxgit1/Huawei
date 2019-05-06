package com.cssl.entity;

import java.util.ArrayList;
import java.util.List;

public class PversionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PversionExample() {
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

        public Criteria andPvIdIsNull() {
            addCriterion("pv_id is null");
            return (Criteria) this;
        }

        public Criteria andPvIdIsNotNull() {
            addCriterion("pv_id is not null");
            return (Criteria) this;
        }

        public Criteria andPvIdEqualTo(Integer value) {
            addCriterion("pv_id =", value, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdNotEqualTo(Integer value) {
            addCriterion("pv_id <>", value, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdGreaterThan(Integer value) {
            addCriterion("pv_id >", value, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("pv_id >=", value, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdLessThan(Integer value) {
            addCriterion("pv_id <", value, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdLessThanOrEqualTo(Integer value) {
            addCriterion("pv_id <=", value, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdIn(List<Integer> values) {
            addCriterion("pv_id in", values, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdNotIn(List<Integer> values) {
            addCriterion("pv_id not in", values, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdBetween(Integer value1, Integer value2) {
            addCriterion("pv_id between", value1, value2, "pvId");
            return (Criteria) this;
        }

        public Criteria andPvIdNotBetween(Integer value1, Integer value2) {
            addCriterion("pv_id not between", value1, value2, "pvId");
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

        public Criteria andPhoneVersionidIsNull() {
            addCriterion("phone_versionid is null");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidIsNotNull() {
            addCriterion("phone_versionid is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidEqualTo(Integer value) {
            addCriterion("phone_versionid =", value, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidNotEqualTo(Integer value) {
            addCriterion("phone_versionid <>", value, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidGreaterThan(Integer value) {
            addCriterion("phone_versionid >", value, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone_versionid >=", value, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidLessThan(Integer value) {
            addCriterion("phone_versionid <", value, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidLessThanOrEqualTo(Integer value) {
            addCriterion("phone_versionid <=", value, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidIn(List<Integer> values) {
            addCriterion("phone_versionid in", values, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidNotIn(List<Integer> values) {
            addCriterion("phone_versionid not in", values, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidBetween(Integer value1, Integer value2) {
            addCriterion("phone_versionid between", value1, value2, "phoneVersionid");
            return (Criteria) this;
        }

        public Criteria andPhoneVersionidNotBetween(Integer value1, Integer value2) {
            addCriterion("phone_versionid not between", value1, value2, "phoneVersionid");
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