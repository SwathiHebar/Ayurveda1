var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        $http.get('http://localhost:8084/ayurveda/rest/cart/'+$scope.cartId).success(function (data) {
           $scope.cart=data;
           console.log($scope.cart);
           
           
        });
    };

    $scope.clearCart = function () {
        $http.put('http://localhost:8084/ayurveda/rest/cart/'+$scope.cartId).success(function (data) {
        	$scope.refreshCart();
        });
    };

    $scope.initCartId = function (cartId) {
    	console.log("hi");
        $scope.cartId = cartId;
       console.log($scope.cartId);
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
    		alert("Hello");
        	$http.put('http://localhost:8084/ayurveda/rest/cart/add/'+productId).success(function () {
            alert("Product successfully added to the cart!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('http://localhost:8084/ayurveda/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal=0;

        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    };
});

