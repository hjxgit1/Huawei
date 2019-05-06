package com.cssl.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderExample() {
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

        public Criteria andOdUserIdIsNull() {
            addCriterion("od_user_id is null");
            return (Criteria) this;
        }

        public Criteria andOdUserIdIsNotNull() {
            addCriterion("od_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andOdUserIdEqualTo(Integer value) {
            addCriterion("od_user_id =", value, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdNotEqualTo(Integer value) {
            addCriterion("od_user_id <>", value, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdGreaterThan(Integer value) {
            addCriterion("od_user_id >", value, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("od_user_id >=", value, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdLessThan(Integer value) {
            addCriterion("od_user_id <", value, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("od_user_id <=", value, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdIn(List<Integer> values) {
            addCriterion("od_user_id in", values, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdNotIn(List<Integer> values) {
            addCriterion("od_user_id not in", values, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdBetween(Integer value1, Integer value2) {
            addCriterion("od_user_id between", value1, value2, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("od_user_id not between", value1, value2, "odUserId");
            return (Criteria) this;
        }

        public Criteria andOdUserNameIsNull() {
            addCriterion("od_user_name is null");
            return (Criteria) this;
        }

        public Criteria andOdUserNameIsNotNull() {
            addCriterion("od_user_name is not null");
            return (Criteria) this;
        }

        public Criteria andOdUserNameEqualTo(String value) {
            addCriterion("od_user_name =", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameNotEqualTo(String value) {
            addCriterion("od_user_name <>", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameGreaterThan(String value) {
            addCriterion("od_user_name >", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("od_user_name >=", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameLessThan(String value) {
            addCriterion("od_user_name <", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameLessThanOrEqualTo(String value) {
            addCriterion("od_user_name <=", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameLike(String value) {
            addCriterion("od_user_name like", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameNotLike(String value) {
            addCriterion("od_user_name not like", value, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameIn(List<String> values) {
            addCriterion("od_user_name in", values, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameNotIn(List<String> values) {
            addCriterion("od_user_name not in", values, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameBetween(String value1, String value2) {
            addCriterion("od_user_name between", value1, value2, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserNameNotBetween(String value1, String value2) {
            addCriterion("od_user_name not between", value1, value2, "odUserName");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressIsNull() {
            addCriterion("od_user_address is null");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressIsNotNull() {
            addCriterion("od_user_address is not null");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressEqualTo(String value) {
            addCriterion("od_user_address =", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressNotEqualTo(String value) {
            addCriterion("od_user_address <>", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressGreaterThan(String value) {
            addCriterion("od_user_address >", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressGreaterThanOrEqualTo(String value) {
            addCriterion("od_user_address >=", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressLessThan(String value) {
            addCriterion("od_user_address <", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressLessThanOrEqualTo(String value) {
            addCriterion("od_user_address <=", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressLike(String value) {
            addCriterion("od_user_address like", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressNotLike(String value) {
            addCriterion("od_user_address not like", value, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressIn(List<String> values) {
            addCriterion("od_user_address in", values, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressNotIn(List<String> values) {
            addCriterion("od_user_address not in", values, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressBetween(String value1, String value2) {
            addCriterion("od_user_address between", value1, value2, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdUserAddressNotBetween(String value1, String value2) {
            addCriterion("od_user_address not between", value1, value2, "odUserAddress");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeIsNull() {
            addCriterion("od_create_time is null");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeIsNotNull() {
            addCriterion("od_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeEqualTo(Date value) {
            addCriterion("od_create_time =", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeNotEqualTo(Date value) {
            addCriterion("od_create_time <>", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeGreaterThan(Date value) {
            addCriterion("od_create_time >", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("od_create_time >=", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeLessThan(Date value) {
            addCriterion("od_create_time <", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("od_create_time <=", value, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeIn(List<Date> values) {
            addCriterion("od_create_time in", values, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeNotIn(List<Date> values) {
            addCriterion("od_create_time not in", values, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeBetween(Date value1, Date value2) {
            addCriterion("od_create_time between", value1, value2, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("od_create_time not between", value1, value2, "odCreateTime");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidIsNull() {
            addCriterion("od_distributionid is null");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidIsNotNull() {
            addCriterion("od_distributionid is not null");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidEqualTo(Integer value) {
            addCriterion("od_distributionid =", value, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidNotEqualTo(Integer value) {
            addCriterion("od_distributionid <>", value, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidGreaterThan(Integer value) {
            addCriterion("od_distributionid >", value, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidGreaterThanOrEqualTo(Integer value) {
            addCriterion("od_distributionid >=", value, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidLessThan(Integer value) {
            addCriterion("od_distributionid <", value, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidLessThanOrEqualTo(Integer value) {
            addCriterion("od_distributionid <=", value, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidIn(List<Integer> values) {
            addCriterion("od_distributionid in", values, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidNotIn(List<Integer> values) {
            addCriterion("od_distributionid not in", values, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidBetween(Integer value1, Integer value2) {
            addCriterion("od_distributionid between", value1, value2, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdDistributionidNotBetween(Integer value1, Integer value2) {
            addCriterion("od_distributionid not between", value1, value2, "odDistributionid");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeIsNull() {
            addCriterion("od_arrivaltime is null");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeIsNotNull() {
            addCriterion("od_arrivaltime is not null");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeEqualTo(Date value) {
            addCriterion("od_arrivaltime =", value, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeNotEqualTo(Date value) {
            addCriterion("od_arrivaltime <>", value, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeGreaterThan(Date value) {
            addCriterion("od_arrivaltime >", value, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeGreaterThanOrEqualTo(Date value) {
            addCriterion("od_arrivaltime >=", value, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeLessThan(Date value) {
            addCriterion("od_arrivaltime <", value, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeLessThanOrEqualTo(Date value) {
            addCriterion("od_arrivaltime <=", value, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeIn(List<Date> values) {
            addCriterion("od_arrivaltime in", values, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeNotIn(List<Date> values) {
            addCriterion("od_arrivaltime not in", values, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeBetween(Date value1, Date value2) {
            addCriterion("od_arrivaltime between", value1, value2, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdArrivaltimeNotBetween(Date value1, Date value2) {
            addCriterion("od_arrivaltime not between", value1, value2, "odArrivaltime");
            return (Criteria) this;
        }

        public Criteria andOdCostIsNull() {
            addCriterion("od_cost is null");
            return (Criteria) this;
        }

        public Criteria andOdCostIsNotNull() {
            addCriterion("od_cost is not null");
            return (Criteria) this;
        }

        public Criteria andOdCostEqualTo(Double value) {
            addCriterion("od_cost =", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostNotEqualTo(Double value) {
            addCriterion("od_cost <>", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostGreaterThan(Double value) {
            addCriterion("od_cost >", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostGreaterThanOrEqualTo(Double value) {
            addCriterion("od_cost >=", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostLessThan(Double value) {
            addCriterion("od_cost <", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostLessThanOrEqualTo(Double value) {
            addCriterion("od_cost <=", value, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostIn(List<Double> values) {
            addCriterion("od_cost in", values, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostNotIn(List<Double> values) {
            addCriterion("od_cost not in", values, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostBetween(Double value1, Double value2) {
            addCriterion("od_cost between", value1, value2, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdCostNotBetween(Double value1, Double value2) {
            addCriterion("od_cost not between", value1, value2, "odCost");
            return (Criteria) this;
        }

        public Criteria andOdStatusIsNull() {
            addCriterion("od_status is null");
            return (Criteria) this;
        }

        public Criteria andOdStatusIsNotNull() {
            addCriterion("od_status is not null");
            return (Criteria) this;
        }

        public Criteria andOdStatusEqualTo(Integer value) {
            addCriterion("od_status =", value, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusNotEqualTo(Integer value) {
            addCriterion("od_status <>", value, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusGreaterThan(Integer value) {
            addCriterion("od_status >", value, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("od_status >=", value, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusLessThan(Integer value) {
            addCriterion("od_status <", value, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusLessThanOrEqualTo(Integer value) {
            addCriterion("od_status <=", value, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusIn(List<Integer> values) {
            addCriterion("od_status in", values, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusNotIn(List<Integer> values) {
            addCriterion("od_status not in", values, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusBetween(Integer value1, Integer value2) {
            addCriterion("od_status between", value1, value2, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("od_status not between", value1, value2, "odStatus");
            return (Criteria) this;
        }

        public Criteria andOdTypeIsNull() {
            addCriterion("od_type is null");
            return (Criteria) this;
        }

        public Criteria andOdTypeIsNotNull() {
            addCriterion("od_type is not null");
            return (Criteria) this;
        }

        public Criteria andOdTypeEqualTo(Integer value) {
            addCriterion("od_type =", value, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeNotEqualTo(Integer value) {
            addCriterion("od_type <>", value, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeGreaterThan(Integer value) {
            addCriterion("od_type >", value, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("od_type >=", value, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeLessThan(Integer value) {
            addCriterion("od_type <", value, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeLessThanOrEqualTo(Integer value) {
            addCriterion("od_type <=", value, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeIn(List<Integer> values) {
            addCriterion("od_type in", values, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeNotIn(List<Integer> values) {
            addCriterion("od_type not in", values, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeBetween(Integer value1, Integer value2) {
            addCriterion("od_type between", value1, value2, "odType");
            return (Criteria) this;
        }

        public Criteria andOdTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("od_type not between", value1, value2, "odType");
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