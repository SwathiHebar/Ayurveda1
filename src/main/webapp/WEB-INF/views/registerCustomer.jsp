<%@include file="/WEB-INF/views/template/Header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
<html>
<head>

<style type="text/css">
body {
 background-image: url("<c:url value="/resources/images/green.jpg"/>");	
}

.btn-primary {
    
    color: #ffffff;
    min-width: 80px;
    max-width: 80px;
    margin-right: 5px;
}

.wrapper {	
  margin-top: 80px;
  margin-bottom: 80px;
}
</style>
</head>
<body>
<div class="wrapper">
    <div class="container">
   
        <div class="page-header">
            <h2>Registration Page</h2>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" class="form-horizontal" method="post" commandName="customer">

        <h3>This basic details are mandatory!...Please fill it.</h3>

        <div class="form-group">
          <label for="name">Name</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
          <br>
          
            <form:input path="customerName" id="name" class="form-Control"/>  
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000"/>
            <br><form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <span style="color: #ff0000">${phoneMsg}</span>
            <form:errors path="customerPhone" cssStyle="color:#ff0000"/>
            <br><form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">User name</label>
            <span cssStyle="color:#ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color:#ff0000" />
            <br><form:input path="Username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000"/>
           <br> <form:password path="password" id="password" class="form-Control"/>
        </div>
 
        <h3>Billing Address</h3>
        <h5>You can fill this later while buying products!</h5>
        
      
        <div class="form-group">
            <label for="billingStreet">Street Name</label><br>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>
        <br>
        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label><br>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>
       <br>
        <div class="form-group">
            <label for="billingCity">City</label><br>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">State</label><br>
            <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label><br>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label><br>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>
        
        <br>
        <h3>Shipping Address</h3>
         <h5>You can fill this later while buying products!</h5>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label><br>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label><br>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label><br>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">State</label><br>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label><br>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label><br>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>
        <br><br>
        <input type="submit"  class=" btn-lg btn-primary btn-success" value="submit">&nbsp;
        <button class="btn-lg btn-primary btn-danger">
        <a href="<c:url value="/ayurveda" />" ><font color="#FFF">Cancel</font></a></button>
        </form:form>
   </div>    </div>
</body>
</html>

   