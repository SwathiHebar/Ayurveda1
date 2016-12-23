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
            <h4>Your Details. . .Please enter valid details!</h4>
        </div>
        <form:form commandName="order" class="form-horizaontal">

        <h3>Basic Info</h3>

        <div class="form-group">
            <label for="name">Name</label><br>
            <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><br>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label><br>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        </div>

        <h3>Billing Address</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <br><form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <br><form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <br><form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <br><form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <br><form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <br><form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <input type="submit" value="Next" class="btn btn-success" name="_eventId_customerInfoCollected" />
        <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
        </form:form>
</div></div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
        </body>
</html>