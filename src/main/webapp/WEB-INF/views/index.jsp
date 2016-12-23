<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="template/Header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<title></title>
    

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  </script>
  <style >
#myCarousel
{
margin-top:10px;
margin-left:200px;
margin-right:200px;
margin-bottom:50px;
height:auto;

}
body{
background-color:;
}

  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      height:700px;
      }
 </style>


</head>


<body background-color="#c6ffb3">
<!-- CAROUSEL -->
  	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  	
 <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

<!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value="/resources/images/a.jpg"/>" alt="a" style>
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/b.jpg"/>" alt="b">
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/c.jpeg"/>" alt="c">
    </div>

    <div class="item">
      <img src="<c:url value="/resources/images/d.jpg"/>" alt="d">
    </div>
  </div>

 <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</body>
</html>