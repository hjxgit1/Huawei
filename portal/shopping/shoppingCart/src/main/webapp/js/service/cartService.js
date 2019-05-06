//购物车服务层
app.service('cartService',function($http){
	//购物车列表
	this.findCartList=function(){
		return $http.get('findCartList');
	}

	this.addGoodsToCartList=function(phoneId,num) {
        return $http.get("shoppingJia?phoneId="+phoneId+"&&num="+num);
    }
    
    this.totalSum=function (cartList) {
		var totleValue={"totalCount":0,"totalMoney":0};
		totleValue.totalCount=cartList.length;
		for (var i=0;i<cartList.length;i++){
            totleValue.totalMoney+=cartList[i].phone.phoneOriginalprice*cartList[i].number;
        }
        return totleValue;
    }

    //获取当前登录账号的收货地址
    this.findAddressList=function(){
        return $http.get('address/findListByLoginUser');
    }
    
    this.addNewAddress=function (entity) {
        return $http.post('address/add',entity);
    }
});