<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%@include file="/WEB-INF/views/template/Header.jsp"%>
<script src="<c:url value="/resources/js/controller.js"/>"></script>

<body ng-app = "cartApp">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">here is your product details...
            </p>
        </div>

        <div class="container" >
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image"
                             style="width:50%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                       <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    
                    <h4>${product.productPrice} INR</h4>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <div ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
                        <a  class="btn btn-warning btn-large"
                           ng-click="addToCart('${product.productId}')"><span
                      		          class="glyphicon glyphicon-shopping-cart"></span>Order
                            Now</a>
                        <a href=<spring:url value="/customer/cart" />
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
                    </div>
                </div>
            </div>
        </div>
<br>
<br>
</div>
</div>

<br>
<br>
        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
        </body>
