//购物车控制层
app.controller('cartController',function($scope,cartService){
	//查询购物车列表
	$scope.findCartList=function(){
		cartService.findCartList().success(
			function(response){
				$scope.cartList=response;
                $scope.totalValue=cartService.totalSum($scope.cartList);
			}
		);
	}

	//加
	$scope.addGoodsToCartList=function(phoneId,num) {
		cartService.addGoodsToCartList(phoneId,num).success(
            function (response) {
				if(response.flag){
                    $scope.findCartList();
				}else{
					alert(response.desc);
				}
            }
		);
    }

    //获取当前用户的地址列表
    $scope.findAddressList=function(){
        cartService.findAddressList().success(
            function(response){
                $scope.addressList=response;
                for(var i=0;i<$scope.addressList.length;i++){
                    if($scope.addressList[i].isDefault=='1'){
                        $scope.address=$scope.addressList[i];
                        break;
                    }
                }

            }
        );
    }

    //选择地址
    $scope.selectAddress=function(address){
        $scope.address=address;
    }

    //判断某地址对象是不是当前选择的地址
    $scope.isSeletedAddress=function(address){
        if(address==$scope.address){
            return true;
        }else{
            return false;
        }
    }

    //添加新的地址
    $scope.addNewAddress=function () {
        alert($scope.entity+"*********");
        cartService.addNewAddress($scope.entity).success(
            function (response) {
                if(response.flag){
                    $scope.findAddressList();
                }else{
                    alert(response.desc);
                }
            }
        );
    }

});