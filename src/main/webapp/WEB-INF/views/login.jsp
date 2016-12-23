<%@include file="/WEB-INF/views/template/Header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
 background-image: url("<c:url value="/resources/images/im.jpg"/>");	
}

.wrapper {	
  margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 700px;
  max-height: 700px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color:white ;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	
	.checkbox {
	  font-weight: normal;
	}

		.form-control {
	  position: relative;
	  font-size: 16px;
	  height: 700px;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 30px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
.btn-primary {
    background: #0099cc;
    color: #ffffff;
    min-width: 80px;
    max-width: 80px
}
 .btn {
    background-color:; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    min-width: 700px;
    max-width: 80px
}
error{
    min-height: 10em;
    display: table-cell;
    vertical-align: middle
    }
</style>
</head>
<body>
  
               
    <form class="form-signin" name="loginForm" action=<c:url value='/j_spring_security_check'/> method="post">       
  <div class="wrapper">
  <c:if test="${not empty error}">
<div class="error" style="color: #ff0000;">${error}</div>
  </c:if>
  
      <h2 class="form-signin-heading">Please Login</h2>
      <br>
      <label>Username:</label>
      <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
      <br>
      <label>Password:</label>
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      
      <br>
      <button class="btn btn-lg btn-primary btn-success" type="submit" >Login</button> 
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      <br><br>
      
      </form>
 </div>
      <div> <p align="center">Not a member? Register here
      <button class="btn btn-lg btn-primary" size="30" >
      <a href="/ayurveda/register"><font color="#FFF">Register </font></a></button></p>  
     </div>

</body> 
</html>
