<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="footer.jsp" %>


<!doctype html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style >
body
{
background-color: white;

}
navbar {min-height: 120px;}
.navbar-brand {padding: 0.15px; height: 120px; line-height: 120px;}
@media (min-width: 1200px) {
  .container {
  max-width: 1170px;
}
</style>
</head>

<body>


 <nav class="navbar navbar-inverse navbar-fixed-top">

  <div class="container">
    <button class="navbar-toggle" data-toggle="collapse"  data-target=".navHeaderCollapse">
    	<span class="icon-bar"></span>
   		 <span class="icon-bar"></span>
    	<span class="icon-bar"></span>
    	
    </button>
    
    <div class="navbar-header">
      <a class="navbar-brand" href="/ayurveda"><font size="5" color=white>AyurMantra </font></a>
    </div>
    
    
      <div class="navbar-collapse collapse navHeaderCollapse">
      <ul class="nav navbar-nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a> 
      	<ul class="dropdown-menu">
      	<li><a href=<c:url value="/product/productList/all" />>Hair</a></li>
        <li><a href=<c:url value="/mailModel"/>>Recomend</a></li>
        
    	</ul>
    	 <ul class="nav navbar-nav ">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />">Cart</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                                <li><a href="<c:url value="/admin/product/addProduct" />">Add Products</a></li>
                            </c:if>
                            </c:if>
                            </ul>
                       
    	</li>
    	   </ul>
    	  <ul class="nav navbar-nav navbar-right">
           <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login/" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-user"></span>Register</a></li>
                       </c:if>
                       </ul> 
    	 
     </div>
     </div>
		 </nav>


</body>
</html>