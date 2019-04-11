package com.cssl.entity;

import java.util.ArrayList;
import java.util.List;

public class CategoryExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CategoryExample() {
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

        public Criteria andHpcIdIsNull() {
            addCriterion("hpc_id is null");
            return (Criteria) this;
        }

        public Criteria andHpcIdIsNotNull() {
            addCriterion("hpc_id is not null");
            return (Criteria) this;
        }

        public Criteria andHpcIdEqualTo(Integer value) {
            addCriterion("hpc_id =", value, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdNotEqualTo(Integer value) {
            addCriterion("hpc_id <>", value, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdGreaterThan(Integer value) {
            addCriterion("hpc_id >", value, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("hpc_id >=", value, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdLessThan(Integer value) {
            addCriterion("hpc_id <", value, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdLessThanOrEqualTo(Integer value) {
            addCriterion("hpc_id <=", value, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdIn(List<Integer> values) {
            addCriterion("hpc_id in", values, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdNotIn(List<Integer> values) {
            addCriterion("hpc_id not in", values, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdBetween(Integer value1, Integer value2) {
            addCriterion("hpc_id between", value1, value2, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("hpc_id not between", value1, value2, "hpcId");
            return (Criteria) this;
        }

        public Criteria andHpcNameIsNull() {
            addCriterion("hpc_name is null");
            return (Criteria) this;
        }

        public Criteria andHpcNameIsNotNull() {
            addCriterion("hpc_name is not null");
            return (Criteria) this;
        }

        public Criteria andHpcNameEqualTo(String value) {
            addCriterion("hpc_name =", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameNotEqualTo(String value) {
            addCriterion("hpc_name <>", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameGreaterThan(String value) {
            addCriterion("hpc_name >", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameGreaterThanOrEqualTo(String value) {
            addCriterion("hpc_name >=", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameLessThan(String value) {
            addCriterion("hpc_name <", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameLessThanOrEqualTo(String value) {
            addCriterion("hpc_name <=", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameLike(String value) {
            addCriterion("hpc_name like", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameNotLike(String value) {
            addCriterion("hpc_name not like", value, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameIn(List<String> values) {
            addCriterion("hpc_name in", values, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameNotIn(List<String> values) {
            addCriterion("hpc_name not in", values, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameBetween(String value1, String value2) {
            addCriterion("hpc_name between", value1, value2, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcNameNotBetween(String value1, String value2) {
            addCriterion("hpc_name not between", value1, value2, "hpcName");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdIsNull() {
            addCriterion("hpc_parent_id is null");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdIsNotNull() {
            addCriterion("hpc_parent_id is not null");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdEqualTo(Integer value) {
            addCriterion("hpc_parent_id =", value, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdNotEqualTo(Integer value) {
            addCriterion("hpc_parent_id <>", value, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdGreaterThan(Integer value) {
            addCriterion("hpc_parent_id >", value, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("hpc_parent_id >=", value, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdLessThan(Integer value) {
            addCriterion("hpc_parent_id <", value, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdLessThanOrEqualTo(Integer value) {
            addCriterion("hpc_parent_id <=", value, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdIn(List<Integer> values) {
            addCriterion("hpc_parent_id in", values, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdNotIn(List<Integer> values) {
            addCriterion("hpc_parent_id not in", values, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdBetween(Integer value1, Integer value2) {
            addCriterion("hpc_parent_id between", value1, value2, "hpcParentId");
            return (Criteria) this;
        }

        public Criteria andHpcParentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("hpc_parent_id not between", value1, value2, "hpcParentId");
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