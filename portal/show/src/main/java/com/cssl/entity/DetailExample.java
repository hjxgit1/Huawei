package com.cssl.entity;

import java.util.ArrayList;
import java.util.List;

public class DetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DetailExample() {
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

        public Criteria andOddIdIsNull() {
            addCriterion("odd_id is null");
            return (Criteria) this;
        }

        public Criteria andOddIdIsNotNull() {
            addCriterion("odd_id is not null");
            return (Criteria) this;
        }

        public Criteria andOddIdEqualTo(Integer value) {
            addCriterion("odd_id =", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdNotEqualTo(Integer value) {
            addCriterion("odd_id <>", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdGreaterThan(Integer value) {
            addCriterion("odd_id >", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("odd_id >=", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdLessThan(Integer value) {
            addCriterion("odd_id <", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdLessThanOrEqualTo(Integer value) {
            addCriterion("odd_id <=", value, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdIn(List<Integer> values) {
            addCriterion("odd_id in", values, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdNotIn(List<Integer> values) {
            addCriterion("odd_id not in", values, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdBetween(Integer value1, Integer value2) {
            addCriterion("odd_id between", value1, value2, "oddId");
            return (Criteria) this;
        }

        public Criteria andOddIdNotBetween(Integer value1, Integer value2) {
            addCriterion("odd_id not between", value1, value2, "oddId");
            return (Criteria) this;
        }

        public Criteria andOdIdIsNull() {
            addCriterion("od_id is null");
            return (Criteria) this;
        }

        public Criteria andOdIdIsNotNull() {
            addCriterion("od_id is not null");
            return (Criteria) this;
        }

        public Criteria andOdIdEqualTo(String value) {
            addCriterion("od_id =", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotEqualTo(String value) {
            addCriterion("od_id <>", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdGreaterThan(String value) {
            addCriterion("od_id >", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdGreaterThanOrEqualTo(String value) {
            addCriterion("od_id >=", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdLessThan(String value) {
            addCriterion("od_id <", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdLessThanOrEqualTo(String value) {
            addCriterion("od_id <=", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdLike(String value) {
            addCriterion("od_id like", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotLike(String value) {
            addCriterion("od_id not like", value, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdIn(List<String> values) {
            addCriterion("od_id in", values, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotIn(List<String> values) {
            addCriterion("od_id not in", values, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdBetween(String value1, String value2) {
            addCriterion("od_id between", value1, value2, "odId");
            return (Criteria) this;
        }

        public Criteria andOdIdNotBetween(String value1, String value2) {
            addCriterion("od_id not between", value1, value2, "odId");
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

        public Criteria andOddQuantityIsNull() {
            addCriterion("odd_quantity is null");
            return (Criteria) this;
        }

        public Criteria andOddQuantityIsNotNull() {
            addCriterion("odd_quantity is not null");
            return (Criteria) this;
        }

        public Criteria andOddQuantityEqualTo(Integer value) {
            addCriterion("odd_quantity =", value, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityNotEqualTo(Integer value) {
            addCriterion("odd_quantity <>", value, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityGreaterThan(Integer value) {
            addCriterion("odd_quantity >", value, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityGreaterThanOrEqualTo(Integer value) {
            addCriterion("odd_quantity >=", value, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityLessThan(Integer value) {
            addCriterion("odd_quantity <", value, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityLessThanOrEqualTo(Integer value) {
            addCriterion("odd_quantity <=", value, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityIn(List<Integer> values) {
            addCriterion("odd_quantity in", values, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityNotIn(List<Integer> values) {
            addCriterion("odd_quantity not in", values, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityBetween(Integer value1, Integer value2) {
            addCriterion("odd_quantity between", value1, value2, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddQuantityNotBetween(Integer value1, Integer value2) {
            addCriterion("odd_quantity not between", value1, value2, "oddQuantity");
            return (Criteria) this;
        }

        public Criteria andOddCostIsNull() {
            addCriterion("odd_cost is null");
            return (Criteria) this;
        }

        public Criteria andOddCostIsNotNull() {
            addCriterion("odd_cost is not null");
            return (Criteria) this;
        }

        public Criteria andOddCostEqualTo(Double value) {
            addCriterion("odd_cost =", value, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostNotEqualTo(Double value) {
            addCriterion("odd_cost <>", value, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostGreaterThan(Double value) {
            addCriterion("odd_cost >", value, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostGreaterThanOrEqualTo(Double value) {
            addCriterion("odd_cost >=", value, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostLessThan(Double value) {
            addCriterion("odd_cost <", value, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostLessThanOrEqualTo(Double value) {
            addCriterion("odd_cost <=", value, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostIn(List<Double> values) {
            addCriterion("odd_cost in", values, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostNotIn(List<Double> values) {
            addCriterion("odd_cost not in", values, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostBetween(Double value1, Double value2) {
            addCriterion("odd_cost between", value1, value2, "oddCost");
            return (Criteria) this;
        }

        public Criteria andOddCostNotBetween(Double value1, Double value2) {
            addCriterion("odd_cost not between", value1, value2, "oddCost");
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