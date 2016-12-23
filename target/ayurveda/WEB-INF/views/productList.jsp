<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/Header.jsp"%>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>
<style type="text/css">

.wrapper {	
  margin-top: 100px;
  margin-bottom: 100px;
}

</style>
</head>
<body  bgcolor="white">
<div class="wrapper">
    <div class="container">
        <div class="page-header">
            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:50%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td> ${product.productPrice} INR</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><button type="button">View</button></a></td>
                </tr>
            </c:forEach>
        </table>
        </div></div>
        </body>
</html>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
