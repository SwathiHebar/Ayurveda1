<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="footer.jsp" %>


<!doctype html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <style >

nav{
    width:90%;
    margin: auto;
    border: 3px solid #73AD21;
    background-color:#1a0d00;
   
}

 
 
 }
</style>
</head>

<body>


 <nav class="navbar navbar-fixed-top">

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
      <div class="nav navbar-nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font size="4" color=#ff751a>Products</font><span class="caret"></span></a> 
      	<ul class="dropdown-menu">
      	<li><a href=<c:url value="/product/productList/beauty" />><font size="4" color=#ff751a>Beauty</font></a></li>
      	<li><a href=<c:url value="/product/productList/health" />><font size="4" color=#ff751a>>Health</font></a></a></li>
      	<li><a href=<c:url value="/product/productList/Other" />><font size="4" color=#ff751a>DailyUse</font> </a></li>
        </ul>
    	 <li class="active"><a href="mailto:swathihebbar49@gmail.com?subject=Feedback"><font size="4" color=#ff751a>Feedback</font></a></li>
    	               
    	</li></div>
    	  
    	  <ul class="nav navbar-nav navbar-right">
           <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login/" />"><span class="glyphicon glyphicon-log-in"></span><font size="4" color=#ff751a> Login</font></a></li>
                        <li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-user"></span><font size="4" color=#ff751a>Register</font></a></li>
                       </c:if>
                       </ul> 
    	 <ul class="nav navbar-nav navbar-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a><font size="4" color=#cc9900>Hello ${pageContext.request.userPrincipal.name}</font></a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><font size="4" color=#ff751a>Logout</font></a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />"><font size="4" color=#ff751a>Cart</font></a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />"><font size="4" color=#ff751a>Admin<font size="4" color=#ff751a></a></li>
                                <li><a href="<c:url value="/admin/product/addProduct" />"><font size="4" color=#ff751a>Add Products</font></a></li>
                            </c:if>
                            </c:if>
                            </ul>
         
     </div>
     </div>
		 </nav>


</body>
</html>