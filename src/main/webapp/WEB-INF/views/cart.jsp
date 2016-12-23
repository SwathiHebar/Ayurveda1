<%@include file="/WEB-INF/views/template/Header.jsp" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<html>
<head>
<style type="text/css">
.wrapper {	
  margin-top: 80px;
  margin-bottom: 80px;
}
.container
{

}
</style>
</head>
<body>


<div class="wrapper">
    <div class="container">
       
            
                <div class="container">
                    <h1>Cart</h1>
                   <h2>All the selected products in your shopping cart.</h2>
                </div>
            </div>
        

  <section class="container" ng-app="cartApp">
    
       
            <div class="row margin-left25" ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
                <a href=<spring:url value="/order/${cartId}"/>
                   class="btn btn-success pull-right"><span class="glyphicon-shopping-cart glyphicon"></span>Buy Now!
                </a>
            </div>

            <table class="table table-hover">
                <tr>
                    <th>Product</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}} INR</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}} INR</td>
                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>remove</a></td>
                </tr>
                <tr>
                    <th></th>
          
          
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{calGrandTotal()}}</th>
                    <th></th>
                </tr>
            </table>

            <a href="<spring:url value="/" />" class="btn btn-info">Continue Shopping</a>
            </div>
        </section>

    </div>
</div>

<script src="<c:url value="/resources/js/controller.js" /> "></script> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js"/>"></script>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body></html>