<%@include file="/WEB-INF/views/template/Header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<html>
<head>
<style type="text/css">

.wrapper {	
  margin-top: 70px;
  margin-bottom: 70px;
}



</style>

</head>

<body>
<div class="wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product information here:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Name</label>
           <br> <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

      
        <div class="form-group">
            <label for="description">Description</label>
            <br><form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <br>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Skin" />Skin</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Health" />Health</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Other" />DailyUse</label>
        </div> 
        

        <div class="form-group">
            <label for="price">Price</label>
            <br><form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
        </div>


      
        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <br><form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
           <br> <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <br><form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>

</div></div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
</body></html>