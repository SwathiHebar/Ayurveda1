<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/Header.jsp" %>
<script type="text/javascript" src="/resources/js/controller.js"></script>



<div class="span9 margin-bottom center"> 
					<h3>Items in your cart</h3>
					</div>
<div class="span9 margin-left10" ng-app="cartApp">
	 
	 <div class="row margin-left25" ng-controller = "cartCtrl"  ng-init="initCartId('${cartId}')">
        <table class="table table-bordered table-striped fs13" >
		  <thead>
			  <tr>
				
				
				<th class="width110">Product</th>
				<th >Unit Price</th>
				<th>Quantity</th>
				<th>Price(in Rs.)</th>
				<th>Action</th>
			  </tr>
			</thead>
			<tbody>
				<tr ng-repeat = "items in cart.cartItems">
					 	<!-- <td class="span1"><img src="<c:url value="/resources/images/{{items.item.itemId}}.png" /> " alt="image"/></td> -->
						<td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
						<td><a href="#" class="btn btn-danger btnAction" ng-click="removeFromCart(item.product.productId)">
							<span class="glyphicon glyphicon-remove"></span>remove</a></td>
					</tr>
			  <tr>
                    <td></td>
                    <td></td>
					<td></td>
                     <th>Grand Total</th>
                    <th>{{calGrandTotal()}}</th>
                    <td></th>
                </tr>	  
			</tbody>
		  </table>
		  
		  

          <div class="row">
		  <div class="span3">
             <a href="<spring:url value="/" />" class="btn btn-primary center">Continue Shopping</a>
			</div>	
			<div class="span3">
           <a href="<spring:url value="/order/${cartId}"/>"
                   class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
			</div>	  
			<div class="span2">
           <a class="btn btn-danger center" ng-click="clearCart()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
			</div>		  
			
        </div>
		</div>
      </div>     
