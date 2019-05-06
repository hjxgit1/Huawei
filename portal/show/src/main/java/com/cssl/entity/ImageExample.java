package com.cssl.entity;

import java.util.ArrayList;
import java.util.List;

public class ImageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ImageExample() {
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

        public Criteria andImageIdIsNull() {
            addCriterion("image_id is null");
            return (Criteria) this;
        }

        public Criteria andImageIdIsNotNull() {
            addCriterion("image_id is not null");
            return (Criteria) this;
        }

        public Criteria andImageIdEqualTo(Integer value) {
            addCriterion("image_id =", value, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdNotEqualTo(Integer value) {
            addCriterion("image_id <>", value, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdGreaterThan(Integer value) {
            addCriterion("image_id >", value, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("image_id >=", value, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdLessThan(Integer value) {
            addCriterion("image_id <", value, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdLessThanOrEqualTo(Integer value) {
            addCriterion("image_id <=", value, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdIn(List<Integer> values) {
            addCriterion("image_id in", values, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdNotIn(List<Integer> values) {
            addCriterion("image_id not in", values, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdBetween(Integer value1, Integer value2) {
            addCriterion("image_id between", value1, value2, "imageId");
            return (Criteria) this;
        }

        public Criteria andImageIdNotBetween(Integer value1, Integer value2) {
            addCriterion("image_id not between", value1, value2, "imageId");
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

        public Criteria andSmallimagePathIsNull() {
            addCriterion("smallimage_path is null");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathIsNotNull() {
            addCriterion("smallimage_path is not null");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathEqualTo(String value) {
            addCriterion("smallimage_path =", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathNotEqualTo(String value) {
            addCriterion("smallimage_path <>", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathGreaterThan(String value) {
            addCriterion("smallimage_path >", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathGreaterThanOrEqualTo(String value) {
            addCriterion("smallimage_path >=", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathLessThan(String value) {
            addCriterion("smallimage_path <", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathLessThanOrEqualTo(String value) {
            addCriterion("smallimage_path <=", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathLike(String value) {
            addCriterion("smallimage_path like", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathNotLike(String value) {
            addCriterion("smallimage_path not like", value, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathIn(List<String> values) {
            addCriterion("smallimage_path in", values, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathNotIn(List<String> values) {
            addCriterion("smallimage_path not in", values, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathBetween(String value1, String value2) {
            addCriterion("smallimage_path between", value1, value2, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andSmallimagePathNotBetween(String value1, String value2) {
            addCriterion("smallimage_path not between", value1, value2, "smallimagePath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathIsNull() {
            addCriterion("bigimg_path is null");
            return (Criteria) this;
        }

        public Criteria andBigimgPathIsNotNull() {
            addCriterion("bigimg_path is not null");
            return (Criteria) this;
        }

        public Criteria andBigimgPathEqualTo(String value) {
            addCriterion("bigimg_path =", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathNotEqualTo(String value) {
            addCriterion("bigimg_path <>", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathGreaterThan(String value) {
            addCriterion("bigimg_path >", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathGreaterThanOrEqualTo(String value) {
            addCriterion("bigimg_path >=", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathLessThan(String value) {
            addCriterion("bigimg_path <", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathLessThanOrEqualTo(String value) {
            addCriterion("bigimg_path <=", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathLike(String value) {
            addCriterion("bigimg_path like", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathNotLike(String value) {
            addCriterion("bigimg_path not like", value, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathIn(List<String> values) {
            addCriterion("bigimg_path in", values, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathNotIn(List<String> values) {
            addCriterion("bigimg_path not in", values, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathBetween(String value1, String value2) {
            addCriterion("bigimg_path between", value1, value2, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andBigimgPathNotBetween(String value1, String value2) {
            addCriterion("bigimg_path not between", value1, value2, "bigimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathIsNull() {
            addCriterion("middleimg_path is null");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathIsNotNull() {
            addCriterion("middleimg_path is not null");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathEqualTo(String value) {
            addCriterion("middleimg_path =", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathNotEqualTo(String value) {
            addCriterion("middleimg_path <>", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathGreaterThan(String value) {
            addCriterion("middleimg_path >", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathGreaterThanOrEqualTo(String value) {
            addCriterion("middleimg_path >=", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathLessThan(String value) {
            addCriterion("middleimg_path <", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathLessThanOrEqualTo(String value) {
            addCriterion("middleimg_path <=", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathLike(String value) {
            addCriterion("middleimg_path like", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathNotLike(String value) {
            addCriterion("middleimg_path not like", value, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathIn(List<String> values) {
            addCriterion("middleimg_path in", values, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathNotIn(List<String> values) {
            addCriterion("middleimg_path not in", values, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathBetween(String value1, String value2) {
            addCriterion("middleimg_path between", value1, value2, "middleimgPath");
            return (Criteria) this;
        }

        public Criteria andMiddleimgPathNotBetween(String value1, String value2) {
            addCriterion("middleimg_path not between", value1, value2, "middleimgPath");
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