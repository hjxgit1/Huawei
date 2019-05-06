package com.cssl.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PhoneExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PhoneExample() {
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

        public Criteria andPhoneNameIsNull() {
            addCriterion("phone_name is null");
            return (Criteria) this;
        }

        public Criteria andPhoneNameIsNotNull() {
            addCriterion("phone_name is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneNameEqualTo(String value) {
            addCriterion("phone_name =", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameNotEqualTo(String value) {
            addCriterion("phone_name <>", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameGreaterThan(String value) {
            addCriterion("phone_name >", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameGreaterThanOrEqualTo(String value) {
            addCriterion("phone_name >=", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameLessThan(String value) {
            addCriterion("phone_name <", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameLessThanOrEqualTo(String value) {
            addCriterion("phone_name <=", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameLike(String value) {
            addCriterion("phone_name like", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameNotLike(String value) {
            addCriterion("phone_name not like", value, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameIn(List<String> values) {
            addCriterion("phone_name in", values, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameNotIn(List<String> values) {
            addCriterion("phone_name not in", values, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameBetween(String value1, String value2) {
            addCriterion("phone_name between", value1, value2, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneNameNotBetween(String value1, String value2) {
            addCriterion("phone_name not between", value1, value2, "phoneName");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidIsNull() {
            addCriterion("phone_cateid is null");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidIsNotNull() {
            addCriterion("phone_cateid is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidEqualTo(Integer value) {
            addCriterion("phone_cateid =", value, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidNotEqualTo(Integer value) {
            addCriterion("phone_cateid <>", value, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidGreaterThan(Integer value) {
            addCriterion("phone_cateid >", value, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone_cateid >=", value, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidLessThan(Integer value) {
            addCriterion("phone_cateid <", value, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidLessThanOrEqualTo(Integer value) {
            addCriterion("phone_cateid <=", value, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidIn(List<Integer> values) {
            addCriterion("phone_cateid in", values, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidNotIn(List<Integer> values) {
            addCriterion("phone_cateid not in", values, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidBetween(Integer value1, Integer value2) {
            addCriterion("phone_cateid between", value1, value2, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneCateidNotBetween(Integer value1, Integer value2) {
            addCriterion("phone_cateid not between", value1, value2, "phoneCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidIsNull() {
            addCriterion("phone_child_cateid is null");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidIsNotNull() {
            addCriterion("phone_child_cateid is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidEqualTo(Integer value) {
            addCriterion("phone_child_cateid =", value, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidNotEqualTo(Integer value) {
            addCriterion("phone_child_cateid <>", value, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidGreaterThan(Integer value) {
            addCriterion("phone_child_cateid >", value, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone_child_cateid >=", value, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidLessThan(Integer value) {
            addCriterion("phone_child_cateid <", value, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidLessThanOrEqualTo(Integer value) {
            addCriterion("phone_child_cateid <=", value, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidIn(List<Integer> values) {
            addCriterion("phone_child_cateid in", values, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidNotIn(List<Integer> values) {
            addCriterion("phone_child_cateid not in", values, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidBetween(Integer value1, Integer value2) {
            addCriterion("phone_child_cateid between", value1, value2, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneChildCateidNotBetween(Integer value1, Integer value2) {
            addCriterion("phone_child_cateid not between", value1, value2, "phoneChildCateid");
            return (Criteria) this;
        }

        public Criteria andPhoneDescIsNull() {
            addCriterion("phone_desc is null");
            return (Criteria) this;
        }

        public Criteria andPhoneDescIsNotNull() {
            addCriterion("phone_desc is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneDescEqualTo(String value) {
            addCriterion("phone_desc =", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescNotEqualTo(String value) {
            addCriterion("phone_desc <>", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescGreaterThan(String value) {
            addCriterion("phone_desc >", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescGreaterThanOrEqualTo(String value) {
            addCriterion("phone_desc >=", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescLessThan(String value) {
            addCriterion("phone_desc <", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescLessThanOrEqualTo(String value) {
            addCriterion("phone_desc <=", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescLike(String value) {
            addCriterion("phone_desc like", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescNotLike(String value) {
            addCriterion("phone_desc not like", value, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescIn(List<String> values) {
            addCriterion("phone_desc in", values, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescNotIn(List<String> values) {
            addCriterion("phone_desc not in", values, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescBetween(String value1, String value2) {
            addCriterion("phone_desc between", value1, value2, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneDescNotBetween(String value1, String value2) {
            addCriterion("phone_desc not between", value1, value2, "phoneDesc");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathIsNull() {
            addCriterion("phone_video_path is null");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathIsNotNull() {
            addCriterion("phone_video_path is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathEqualTo(String value) {
            addCriterion("phone_video_path =", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathNotEqualTo(String value) {
            addCriterion("phone_video_path <>", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathGreaterThan(String value) {
            addCriterion("phone_video_path >", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathGreaterThanOrEqualTo(String value) {
            addCriterion("phone_video_path >=", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathLessThan(String value) {
            addCriterion("phone_video_path <", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathLessThanOrEqualTo(String value) {
            addCriterion("phone_video_path <=", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathLike(String value) {
            addCriterion("phone_video_path like", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathNotLike(String value) {
            addCriterion("phone_video_path not like", value, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathIn(List<String> values) {
            addCriterion("phone_video_path in", values, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathNotIn(List<String> values) {
            addCriterion("phone_video_path not in", values, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathBetween(String value1, String value2) {
            addCriterion("phone_video_path between", value1, value2, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneVideoPathNotBetween(String value1, String value2) {
            addCriterion("phone_video_path not between", value1, value2, "phoneVideoPath");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceIsNull() {
            addCriterion("phone_originalprice is null");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceIsNotNull() {
            addCriterion("phone_originalprice is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceEqualTo(Double value) {
            addCriterion("phone_originalprice =", value, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceNotEqualTo(Double value) {
            addCriterion("phone_originalprice <>", value, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceGreaterThan(Double value) {
            addCriterion("phone_originalprice >", value, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("phone_originalprice >=", value, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceLessThan(Double value) {
            addCriterion("phone_originalprice <", value, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceLessThanOrEqualTo(Double value) {
            addCriterion("phone_originalprice <=", value, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceIn(List<Double> values) {
            addCriterion("phone_originalprice in", values, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceNotIn(List<Double> values) {
            addCriterion("phone_originalprice not in", values, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceBetween(Double value1, Double value2) {
            addCriterion("phone_originalprice between", value1, value2, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneOriginalpriceNotBetween(Double value1, Double value2) {
            addCriterion("phone_originalprice not between", value1, value2, "phoneOriginalprice");
            return (Criteria) this;
        }

        public Criteria andPhoneStockIsNull() {
            addCriterion("phone_stock is null");
            return (Criteria) this;
        }

        public Criteria andPhoneStockIsNotNull() {
            addCriterion("phone_stock is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneStockEqualTo(Integer value) {
            addCriterion("phone_stock =", value, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockNotEqualTo(Integer value) {
            addCriterion("phone_stock <>", value, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockGreaterThan(Integer value) {
            addCriterion("phone_stock >", value, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockGreaterThanOrEqualTo(Integer value) {
            addCriterion("phone_stock >=", value, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockLessThan(Integer value) {
            addCriterion("phone_stock <", value, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockLessThanOrEqualTo(Integer value) {
            addCriterion("phone_stock <=", value, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockIn(List<Integer> values) {
            addCriterion("phone_stock in", values, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockNotIn(List<Integer> values) {
            addCriterion("phone_stock not in", values, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockBetween(Integer value1, Integer value2) {
            addCriterion("phone_stock between", value1, value2, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneStockNotBetween(Integer value1, Integer value2) {
            addCriterion("phone_stock not between", value1, value2, "phoneStock");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateIsNull() {
            addCriterion("phone_createDate is null");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateIsNotNull() {
            addCriterion("phone_createDate is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateEqualTo(Date value) {
            addCriterion("phone_createDate =", value, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateNotEqualTo(Date value) {
            addCriterion("phone_createDate <>", value, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateGreaterThan(Date value) {
            addCriterion("phone_createDate >", value, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateGreaterThanOrEqualTo(Date value) {
            addCriterion("phone_createDate >=", value, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateLessThan(Date value) {
            addCriterion("phone_createDate <", value, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateLessThanOrEqualTo(Date value) {
            addCriterion("phone_createDate <=", value, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateIn(List<Date> values) {
            addCriterion("phone_createDate in", values, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateNotIn(List<Date> values) {
            addCriterion("phone_createDate not in", values, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateBetween(Date value1, Date value2) {
            addCriterion("phone_createDate between", value1, value2, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneCreatedateNotBetween(Date value1, Date value2) {
            addCriterion("phone_createDate not between", value1, value2, "phoneCreatedate");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayIsNull() {
            addCriterion("phone_isputaway is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayIsNotNull() {
            addCriterion("phone_isputaway is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayEqualTo(String value) {
            addCriterion("phone_isputaway =", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayNotEqualTo(String value) {
            addCriterion("phone_isputaway <>", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayGreaterThan(String value) {
            addCriterion("phone_isputaway >", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayGreaterThanOrEqualTo(String value) {
            addCriterion("phone_isputaway >=", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayLessThan(String value) {
            addCriterion("phone_isputaway <", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayLessThanOrEqualTo(String value) {
            addCriterion("phone_isputaway <=", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayLike(String value) {
            addCriterion("phone_isputaway like", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayNotLike(String value) {
            addCriterion("phone_isputaway not like", value, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayIn(List<String> values) {
            addCriterion("phone_isputaway in", values, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayNotIn(List<String> values) {
            addCriterion("phone_isputaway not in", values, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayBetween(String value1, String value2) {
            addCriterion("phone_isputaway between", value1, value2, "phoneIsputaway");
            return (Criteria) this;
        }

        public Criteria andPhoneIsputawayNotBetween(String value1, String value2) {
            addCriterion("phone_isputaway not between", value1, value2, "phoneIsputaway");
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