<%@include file="/WEB-INF/views/template/Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <html>
 <head>
 
 <style type="text/css">

.wrapper {	
  margin-top: 80px;
  margin-bottom: 80px;
}
body {
 background-image: url("<c:url value="/resources/images/gr.jpg"/>");	
}
</style>
 
 </head>
 <body>
<div class="wrapper">
    <div class="container">
         <h1>Congratuations... You are registered successfully!</h1>
       <br><h2>Want to browse products? Click below</h2>
        <section class="container">
            <p>
                <a href="<spring:url value="/" />" class="btn btn-info">Products</a>
            </p>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body></html>